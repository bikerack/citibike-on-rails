class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :origin, index: true
      t.references :destination, index: true

      t.timestamps
    end
  end
end
