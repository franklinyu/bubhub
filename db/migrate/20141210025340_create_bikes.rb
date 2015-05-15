class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :bike_id
      t.string :bike_serial_num
      t.string :location_id
      t.timestamps
    end
  end
end
