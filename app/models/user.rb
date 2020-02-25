class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :availabilities, dependent: :destroy
  has_many :reviews
  has_one_attached :photo

  has_many :meetings, class_name: 'Meeting', foreign_key: 'user_one_id', dependent: :destroy
  has_many :meetings, class_name: 'Meeting', foreign_key: 'user_two_id', dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
