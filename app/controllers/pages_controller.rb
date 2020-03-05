class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @meetings = Meeting.where(user_two_id: current_user).or(Meeting.where(user_one_id: current_user))
    @most_recent_meeting_really = @meetings.to_a.delete_if { |m| m.date >= Date.today }
    @most_recent_meeting = @most_recent_meeting_really.sort_by(&:date).last

    @next_meeting_really = @meetings.to_a.delete_if { |m| m.date < Date.today }
    @next_meeting = @next_meeting_really.sort_by(&:date).first

    if @next_meeting
      if @next_meeting.user_one == current_user
        @user_next_meeting = @next_meeting.user_two
      else
        @user_next_meeting = @next_meeting.user_one
      end
    end

    # @last_meeting = Meeting.where(user_two_id: current_user).or(Meeting.where(user_one_id: current_user)).order("id DESC").offset(1).first

    if @most_recent_meeting
      if @most_recent_meeting.user_one == current_user
        @user_most_recent_meeting = @most_recent_meeting.user_two
      else
        @user_most_recent_meeting = @most_recent_meeting.user_one
      end
    else
    end
    @availabilities = current_user.availabilities.sort_by { |d| d[:week_day] }.rotate(1)
  end
end
