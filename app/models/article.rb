class Article < ActiveRecord::Base
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :description, presence: true
  validates :publication, presence: true
  validates :picture1, presence:true

  has_attached_file :picture1,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture1,
    content_type: /\Aimage\/.*\z/

  has_attached_file :picture2,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture2,
    content_type: /\Aimage\/.*\z/

  has_attached_file :picture3,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture3,
    content_type: /\Aimage\/.*\z/

  has_attached_file :picture4,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture4,
    content_type: /\Aimage\/.*\z/

  has_attached_file :picture5,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture5,
    content_type: /\Aimage\/.*\z/

end
