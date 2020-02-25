class AddVenueAddressToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :venue_address, :string
  end
end
