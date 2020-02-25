class ChangeTimeDataTypeToAvailabilities < ActiveRecord::Migration[6.0]
  def change
    change_column :availabilities, :start_time, :datetime
    change_column :availabilities, :end_time, :datetime
  end
end
