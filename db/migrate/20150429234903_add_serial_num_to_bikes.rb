class AddSerialNumToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :bike_serial_num, :string
  end
end
