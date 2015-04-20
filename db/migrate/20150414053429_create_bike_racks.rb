class CreateBikeRacks < ActiveRecord::Migration
  def change
    create_table :bike_racks do |t|
      t.string "location"
      t.string "num_bikes"
      t.string "notes"

      t.timestamps
    end
  end
end
