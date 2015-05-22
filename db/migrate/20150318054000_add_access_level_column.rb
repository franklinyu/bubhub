class AddAccessLevelColumn < ActiveRecord::Migration
  def up
    add_column :users, :access_level, :int, :default => 3
  end
  def down
    remove_column :users, :access_level
  end
end
