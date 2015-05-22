class AddHeightToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :bike_height, :string
  end
end
