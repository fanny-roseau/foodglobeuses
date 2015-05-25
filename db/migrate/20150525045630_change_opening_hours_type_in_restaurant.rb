class ChangeOpeningHoursTypeInRestaurant < ActiveRecord::Migration
  def change
    change_column :restaurants, :opening_hours, :string
  end
end
