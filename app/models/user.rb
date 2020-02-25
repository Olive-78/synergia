class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :availabilities
  has_many :reviews
  has_many :meetings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :create_availabilities

  private

  def create_availabilities
    (0..6).each do |day_number|
      Availability.create(
        user: self,
        week_day: day_number,
        start_time: nil,
        end_time: nil
      )
    end
  end

end
