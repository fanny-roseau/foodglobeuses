class AddColumnMoodToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :mood, :string
  end
end
