class WeekAvailabilitiesController < ApplicationController

 def new
  @week_availability = WeekAvailability.new
 end

 def create
  @week_availability = WeekAvailability.new(week_availabilies_params)
  if @week_availability.valid?
    @week_availability.register(current_user)
    redirect_to user_path(current_user)
  else
    render :new
  end
 end

 private

 def week_availabilies_params
  strong_params = params.require(:week_availability).permit(
    :lundi,
    :mardi,
    :mercredi,
    :jeudi,
    :vendredi,
    :samedi,
    :dimanche,
    :breakfast,
    :lunch,
    :afterwork)
  strong_params.each do |field, value|
      strong_params[field] = value == "1"
  end
 end

end
