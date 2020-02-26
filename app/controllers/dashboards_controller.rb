class DashboardsController < ApplicationController
  def index
    @user = current_user
    @user_two = User.first
    @meeting = Meeting.where(user_two_id: current_user).or(Meeting.where(user_one_id: current_user)).last
  end
end
