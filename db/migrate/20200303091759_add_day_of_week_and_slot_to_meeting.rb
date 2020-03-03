class AddDayOfWeekAndSlotToMeeting < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :week_day, :integer
    add_column :meetings, :slot, :string
  end
end
