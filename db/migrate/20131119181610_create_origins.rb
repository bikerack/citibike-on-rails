class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :station, index: true

      t.timestamps
    end
  end
end
