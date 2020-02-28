class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @next_meeting = Meeting.where(user_two_id: current_user).or(Meeting.where(user_one_id: current_user)).order("id DESC").first
    @user_next_meeting = @next_meeting.user_two
    @last_meeting = Meeting.where(user_two_id: current_user).or(Meeting.where(user_one_id: current_user)).order("id DESC").offset(1).first
    @user_last_meeting = @last_meeting.user_two
    @availabilities = current_user.availabilities.sort_by { |d| d[:week_day] }.rotate(1)
  end
end
