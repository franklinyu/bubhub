class AddDescriptionToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :bike_description, :string
  end
end
