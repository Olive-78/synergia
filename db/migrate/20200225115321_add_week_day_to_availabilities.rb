class AddWeekDayToAvailabilities < ActiveRecord::Migration[6.0]
  def change
    add_column :availabilities, :week_day, :integer
  end
end
