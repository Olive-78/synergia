class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @most_recent_meeting = Meeting.where(user_two_id: current_user).or(Meeting.where(user_one_id: current_user)).order("id DESC").first
    @most_recent_meeting.date >= Date.today ? @next_meeting = @most_recent_meeting : @next_meeting = nil
    if @next_meeting
      if @next_meeting.user_one == current_user
        @user_next_meeting = @next_meeting.user_two
      else
        @user_next_meeting = @next_meeting.user_one
      end
    end
    @last_meeting = Meeting.where(user_two_id: current_user).or(Meeting.where(user_one_id: current_user)).order("id DESC").offset(1).first
    if @last_meeting.user_one == current_user
      @user_last_meeting = @last_meeting.user_two
    else
      @user_last_meeting = @last_meeting.user_one
    end
    @availabilities = current_user.availabilities.sort_by { |d| d[:week_day] }.rotate(1)
  end
end
