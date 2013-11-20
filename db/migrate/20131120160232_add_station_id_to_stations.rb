class AddStationIdToStations < ActiveRecord::Migration
  def change
    add_column :stations, :station_id, :integer
  end
end
