class Garment < ApplicationRecord
  belongs_to :garment_type
  belongs_to :brand
  has_many :clothings

  paginates_per 1

  validates :brand, :garment_type, :presence => true

  def full_garment
    brand.name  + " " + garment_type.name + " " + description
end


end
