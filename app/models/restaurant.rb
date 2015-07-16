class Restaurant < ActiveRecord::Base

  has_one :article
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true
  validates :city, presence: true, inclusion: {in:["Amsterdam", "Barcelone", "Berlin", "Cap-ferret", "Hanoi", "Jérusalem", "Lisbonne", "Londres", "Los Angeles", "Marrakech", "Miami", "Montreal", "New-York", "Nouvelle-Orléans" "Paris", "Piana", "San Francisco", "Tel-aviv"]}
  validates :mood, inclusion: {in:["brunch", "lunch on the go", "business lunch", "tea time", "apero", "tapas", "trendy casual dinner", "classy dinner", "where to take my date for dinner?"]}
  validates :picture, presence:true

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end


