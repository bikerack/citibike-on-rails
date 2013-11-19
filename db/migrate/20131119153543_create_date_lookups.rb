class CreateDateLookups < ActiveRecord::Migration
  def change
    create_table :date_lookups do |t|
      t.datetime :history

      t.timestamps
    end
  end
end
