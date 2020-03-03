class CreateMatchesService
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

    # meetings = matches.each do |key, value|
    #   pairs = values_at(key).permutation(2).to_a
    #   # @user_one = pairs.first
    #   # @user_two = pairs.last
    # end
    # p meetings

    # pairs = matches.values.permutation(2).to_a
    # p pairs
  end
end
