class AddDescriptionEnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :description_en, :text
  end
end
