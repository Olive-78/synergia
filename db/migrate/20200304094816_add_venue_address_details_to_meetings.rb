class AddVenueAddressDetailsToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :venue_postcode, :string
    add_column :meetings, :venue_city, :string
  end
end
