class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :station, index: true

      t.timestamps
    end
  end
end
