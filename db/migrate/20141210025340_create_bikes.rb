class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :bike_id
      t.string :location_id
      t.string :bike_serial_num
      t.string :bike_height
      t.string :bike_description
      t.string :last_checkout_id
      t.timestamp :last_checked_out
      t.timestamps
    end
  end
end
