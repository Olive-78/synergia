class WeekAvailability

  include ActiveModel::Model

  attr_accessor(
    :lundi,
    :mardi,
    :mercredi,
    :jeudi,
    :vendredi,
    :samedi,
    :dimanche,
    :breakfast,
    :lunch,
    :afterwork
  )

  def register(user)
    user_monday = user.availabilities.find_by(week_day: 1)
    if self.lundi
      user_monday.update(breakfast: self.breakfast, lunch: self.lunch, afterwork: self.afterwork)
    else
      user_monday.update(breakfast: nil, lunch: nil, afterwork: nil)
    end

    user_tuesday = user.availabilities.find_by(week_day: 2)
    if self.mardi
      user_tuesday.update(breakfast: self.breakfast, lunch: self.lunch, afterwork: self.afterwork)
    else
      user_tuesday.update(breakfast: nil, lunch: nil, afterwork: nil)
    end

    user_wednesday = user.availabilities.find_by(week_day: 3)
    if self.mercredi
      user_wednesday.update(breakfast: self.breakfast, lunch: self.lunch, afterwork: self.afterwork)
    else
      user_wednesday.update(breakfast: nil, lunch: nil, afterwork: nil)
    end

    user_thursday = user.availabilities.find_by(week_day: 4)
    if self.jeudi
      user_thursday.update(breakfast: self.breakfast, lunch: self.lunch, afterwork: self.afterwork)
    else
      user_thursday.update(breakfast: nil, lunch: nil, afterwork: nil)
    end

    user_friday = user.availabilities.find_by(week_day: 5)
    if self.vendredi
      user_friday.update(breakfast: self.breakfast, lunch: self.lunch, afterwork: self.afterwork)
    else
      user_friday.update(breakfast: nil, lunch: nil, afterwork: nil)
    end

    user_saturday = user.availabilities.find_by(week_day: 6)
    if self.samedi
      user_saturday.update(breakfast: self.breakfast, lunch: self.lunch, afterwork: self.afterwork)
    else
      user_saturday.update(breakfast: nil, lunch: nil, afterwork: nil)
    end

    user_sunday = user.availabilities.find_by(week_day: 0)
    if self.dimanche
      user_sunday.update(breakfast: self.breakfast, lunch: self.lunch, afterwork: self.afterwork)
    else
      user_sunday.update(breakfast: nil, lunch: nil, afterwork: nil)
    end

  end

  # def self.build_from_user(user)
  #   week_availability.create
  # end

end
