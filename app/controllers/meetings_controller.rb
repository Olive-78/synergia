class MeetingsController < ApplicationController

  def index
    # @meetings = policy_scope(Meeting)
    @meetings = policy_scope(Meeting).where(user_two_id: current_user).or(Meeting.where(user_two_id: current_user))
  end

  def show
    authorize @meeting
    @meeting = Meeting.find(params[:id])
    # authorize @meeting
  end

  def update
    authorize @meeting
    @meeting = Meeting.find(params[:meeting_id])
    # authorize @meeting
    @meeting.update(meeting_params) # permit other attributes if needed
    redirect_to meeting_path(@meeting)
  end

  private
  def meeting_params
    params.require(:meeting).permit(:status)
  end
end
