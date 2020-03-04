class CreateMatchesService

  require 'json'
  require 'open-uri'

  dispo = [true, false]
  User.all.each do |user|
    user.availabilities.each do |avail|
      avail.update(breakfast: dispo.sample, lunch: dispo.sample, afterwork: dispo.sample)
    end
  end


  def call
    even_user_count = User.count.even? ? User.count : User.count - 1
    requirement_hash = {
      'breakfast0' => {
        options: [],
        selection: even_user_count
      },
      'lunch0' => {
        options: [],
        selection: even_user_count
      },
      'afterwork0' => {
        options: [],
        selection: even_user_count
      },
      'breakfast1' => {
        options: [],
        selection: even_user_count
      },
      'lunch1' => {
        options: [],
        selection: even_user_count
      },
      'afterwork1' => {
        options: [],
        selection: even_user_count
      },
      'breakfast2' => {
        options: [],
        selection: even_user_count
      },
      'lunch2' => {
        options: [],
        selection: even_user_count
      },
      'afterwork2' => {
        options: [],
        selection: even_user_count
      },
      'breakfast3' => {
        options: [],
        selection: even_user_count
      },
      'lunch3' => {
        options: [],
        selection: even_user_count
      },
      'afterwork3' => {
        options: [],
        selection: even_user_count
      },
      'breakfast4' => {
        options: [],
        selection: even_user_count
      },
      'lunch4' => {
        options: [],
        selection: even_user_count
      },
      'afterwork4' => {
        options: [],
        selection: even_user_count
      },
      'breakfast5' => {
        options: [],
        selection: even_user_count
      },
      'lunch5' => {
        options: [],
        selection: even_user_count
      },
      'afterwork5' => {
        options: [],
        selection: even_user_count
      },
      'breakfast6' => {
        options: [],
        selection: even_user_count
      },
      'lunch6' => {
        options: [],
        selection: even_user_count
      },
      'afterwork6' => {
        options: [],
        selection: even_user_count
      }
    }

    User.find_each do |user|
      user.availabilities.each do |availability|
       #hash_key = "#{availability.week_day}_"
        if availability.breakfast
          hash_key = "breakfast#{availability.week_day}"
          requirement_hash[hash_key][:options] << user.id
        end
        if availability.lunch
          hash_key = "lunch#{availability.week_day}"
          requirement_hash[hash_key][:options] << user.id
        end
        if availability.afterwork
          hash_key = "afterwork#{availability.week_day}"
          requirement_hash[hash_key][:options] << user.id
        end
      end
    end
    matches = BipartiteGraphSets.get_perfect_match(requirement_hash)
    meetings = []
    matches.each do |key, array|
      array.each_slice(2) do |user_one_id, user_two_id|
        if user_two_id != nil
          meeting = Meeting.new(week_day: key[-1].to_i, slot: key[0..-2])
          meeting.date = Date.parse(Date::DAYNAMES[key[-1].to_i])
          if meeting.date <= Date.today
            meeting.date += 7
          end
          meeting.user_one_id = user_one_id
          meeting.user_two_id = user_two_id
          meeting.save!
          meetings << meeting
        end
      end
    end
    # p matches
    # p meetings
    meetings.each do |meeting|

      user_1 = User.find(meeting.user_one_id).geocode
      user_2 = User.find(meeting.user_two_id).geocode
      p latitude = (user_1[0] + user_2[0])/2
      p longitude = (user_1[1] + user_2[1])/2
      # point = Geocoder::Calculations.geographic_center([User.find(meeting.user_one_id).geocode, User.find(meeting.user_two_id).geocode])
      # meeting.latitude = point[0]
      # meeting.longitude = point[1]
      meeting.latitude = latitude
      meeting.longitude = longitude
      p meeting.save!
      # meeting.save!

      url = "https://api.foursquare.com/v2/venues/explore?ll=#{latitude},#{longitude}&client_id=JCJOJRZ0D2AYOBDQ4AMRGOTRACTZTVU5GHWW1JFYAY23THFK&client_secret=VCFVMZO1GM3GWCYF2TH1PWILOK0ZRAVBXDTACJR2KFZHXQLJ&v=20200304&section=drinks&radius=500&sortByPopularity=1"
      venues_serialized = open(url).read
      venues = JSON.parse(venues_serialized)
      # p venues['response']['groups'][0]['items'][0]['venue']['name']
      # binding.pry
      meeting.venue_name = venues['response']['groups'][0]['items'][0]['venue']['name']
      meeting.venue_address = venues['response']['groups'][0]['items'][0]['venue']['location']['address']
      meeting.venue_postcode = venues['response']['groups'][0]['items'][0]['venue']['location']['postalCode']
      meeting.venue_city = venues['response']['groups'][0]['items'][0]['venue']['location']['city']
      meeting.venue_latitude = venues['response']['groups'][0]['items'][0]['venue']['location']['lat']
      meeting.venue_longitude = venues['response']['groups'][0]['items'][0]['venue']['location']['lng']
      meeting.save!
      # meeting.update(venue_name: venue_name, venue_address: venue_address, venue_postcode: venue_postcode, venue_city: venue_city, venue_latitude: venue_latitude, venue_longitude: venue_longitude)
      p "######################################"
    end
  end
end

# {
#   "breakfast0"=>[10, 17, 14, 18, 15, 12, 5, 19, 9, 8],
#   "lunch0"=>[20, 21, 16, 7, 6, 13],
#   "breakfast1"=>[22, 11]
# }




