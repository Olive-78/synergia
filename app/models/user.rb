class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :availabilities
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Méthode qui permet d'identifier dans la liste de tous les meetings, uniquement les meeting
  # dans lequel l' user a participé
  #
  def meetings
    Meeting.where(user_one: self).or(Meeting.where(user_two: self))
  end

  # Permet d'afficher seulement the other guy du meeting
  #
  def relations
    # Méthode qui renvoit un array de hash des informations d'un meeting
    # Pluck permet de renvoyer uniquement les valeurs d'un meeting
    # Flatten fusionne les informations d'un array d'array
    # Uniq enlève les doublons
    #
    ids = meetings.pluck(:user_one_id, :user_two_id).flatten.uniq

    ids_without_self = ids.delete_if {|id| id==(self.id)}

    #Permet d'affiche seulement l'id de ma rencontre dans l'index de mon network
    #

    User.where(id: ids_without_self)
  end
end
