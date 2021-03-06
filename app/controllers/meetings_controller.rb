class MeetingsController < ApplicationController

  def index
    @meetings = policy_scope(Meeting).where(user_one_id: current_user).or(Meeting.where(user_two_id: current_user))
  end

  def show
    @meeting = Meeting.find(params[:id])
    @user_one = @meeting.user_one
    @user_two = @meeting.user_two

    authorize @meeting
    @meeting.geocode

    @marker = {
        lat: @meeting.venue_latitude,
        lng: @meeting.venue_longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { meeting: @meeting })
      }
  end

  def update
    @meeting = Meeting.find(params[:meeting_id])
    @meeting.update(meeting_params) # permit other attributes if needed
    redirect_to meeting_path(@meeting)
    authorize @meeting
  end

  def createmeetings
    CreateMatchesService.new.call
    sleep 3
    skip_authorization
    redirect_to dashboard_path
  end

  private
  def meeting_params
    params.require(:meeting).permit(:status, :date, :venue_name, :user_one_id, :user_two_id, :venue_address, :latitude, :longitude, :week_day, :venue_latitude, :venue_longitude, :venue_city, :slot )
  end
end
