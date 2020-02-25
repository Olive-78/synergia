class Meeting < ApplicationRecord
  # belongs_to :user
  belongs_to :user_one, :class_name => "User", :foreign_key => "user_one_id"
  belongs_to :user_two, :class_name => "User", :foreign_key => "user_two_id"

  has_many :reviews, dependent: :destroy
end
