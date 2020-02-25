class RenamePlaceToVenueName < ActiveRecord::Migration[6.0]
  def change
    rename_column :meetings, :place, :venue_name
  end
end
