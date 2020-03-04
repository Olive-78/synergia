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

    @markers = [{
        lat: @meeting.latitude,
        lng: @meeting.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { meeting: @meeting })
      }]
  end

  def update
    @meeting = Meeting.find(params[:meeting_id])
    @meeting.update(meeting_params) # permit other attributes if needed
    redirect_to meeting_path(@meeting)
    authorize @meeting
  end

  def createmeetings
    CreateMatchesService.new.call
    sleep 5
    skip_authorization
    redirect_to dashboard_path
  end

  private
  def meeting_params
    params.require(:meeting).permit(:status)
  end
end
