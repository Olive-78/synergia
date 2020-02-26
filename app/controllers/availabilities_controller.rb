class AvailabilitiesController < ApplicationController

  def edit
    @availability = Availability.find(params[:id])
    authorize @availability
  end

  def update
    # @user = User.find(params[:user_id])
    @availability = Availability.find(params[:id])
    # @availability.user = @user
    @availability.update(availability_params)
    redirect_to user_path
    authorize @availability
  end

  private

  def availability_params
    params.require(:availability).permit(:week_day, :start_time, :end_time)
  end

end
