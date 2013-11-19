class CreateDateLookups < ActiveRecord::Migration
  def change
    create_table :date_lookups do |t|
      t.string :name

      t.timestamps
    end
  end
end
