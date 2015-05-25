class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :restaurant, index: true, foreign_key: true
      t.text :description
      t.date :publication

      t.timestamps null: false
    end
  end
end
