class AvailabilitiesController < ApplicationController

  def index
    @availabilities = current_user.availabilities
  end

  def edit
    @user = User.find(params[:id])
    @availability = Availability.find(params[:id])
    authorize @availability
  end

  def update
    @availability = Availability.find(params[:id])
    @availability.user = current_user
    @availability.update(availability_params)
    redirect_to availabilities_path
    authorize @availability
  end

  private

  def availability_params
    params.require(:availability).permit(:week_day, :breakfast, :lunch, :afterwork)
  end

end
