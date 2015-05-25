class AddColumnsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :opening_hours, :text
    add_column :restaurants, :phone, :string
    add_column :restaurants, :latitude, :float
    add_column :restaurants, :longitude, :float
  end
end
