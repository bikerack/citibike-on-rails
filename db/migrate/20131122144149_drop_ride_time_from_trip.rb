class DropRideTimeFromTrip < ActiveRecord::Migration
  def change
    remove_column :trips, :ride_time, :datetime
  end
end
