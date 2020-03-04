class AddVenueCoordinatesToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :venue_latitude, :float
    add_column :meetings, :venue_longitude, :float
  end
end
