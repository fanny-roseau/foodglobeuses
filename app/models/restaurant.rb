class Restaurant < ActiveRecord::Base

  has_one :article

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true
  validates :city, presence: true, inclusion: {in:["Amsterdam", "Barcelone", "Berlin", "Cap-ferret", "Hanoi", "Jérusalem", "Lisbonne", "Londres", "Los Angeles", "Marrakech", "Montreal", "New-York", "Paris", "Piana", "Tel-aviv"]}
  validates :picture, presence:true

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end


