class CreateMatchesService

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

    distance = meetings.each do |meeting|
      Geocoder::Calculations.distance_between(meeting.user_one_id.address.geocode, meeting.user_two_id.address.geocode, units: :km)
    end

    p distance

  end
end

# {
#   "breakfast0"=>[10, 17, 14, 18, 15, 12, 5, 19, 9, 8],
#   "lunch0"=>[20, 21, 16, 7, 6, 13],
#   "breakfast1"=>[22, 11]
# }




