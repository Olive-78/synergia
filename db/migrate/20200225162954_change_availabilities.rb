class ChangeAvailabilities < ActiveRecord::Migration[6.0]
  def change
    remove_column :availabilities, :start_time
    remove_column :availabilities, :end_time
    add_column :availabilities, :breakfast, :boolean
    add_column :availabilities, :lunch, :boolean
    add_column :availabilities, :afterwork, :boolean
  end
end
