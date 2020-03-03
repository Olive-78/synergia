class FindAddressService

  def call
    user_geocoded = User.find_each do |user|
      user.geocode
    end
    p user_geocoded
      #Geocoder::Calculations.distance_between(meeting.user_one_id.address.geocode, meeting.user_two_id.address.geocode, units: :km)
  end
end
