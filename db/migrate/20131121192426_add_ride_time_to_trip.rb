class AddRideTimeToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :ride_time, :datetime
  end
end
