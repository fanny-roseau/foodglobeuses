class AddAttachmentPicture1Picture2Picture3Picture4Picture5ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :picture1
      t.attachment :picture2
      t.attachment :picture3
      t.attachment :picture4
      t.attachment :picture5
    end
  end

  def self.down
    remove_attachment :articles, :picture1
    remove_attachment :articles, :picture2
    remove_attachment :articles, :picture3
    remove_attachment :articles, :picture4
    remove_attachment :articles, :picture5
  end
end
