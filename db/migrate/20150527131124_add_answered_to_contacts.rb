class AddAnsweredToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :answered, :boolean, default: "false"
  end
end
