class ChangePublishedTypeInReview < ActiveRecord::Migration
  def change
    change_column :reviews, :published, :string, default: "pending"
  end
end
