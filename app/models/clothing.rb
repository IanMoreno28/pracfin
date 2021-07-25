class Clothing < ApplicationRecord
  belongs_to :presenter
  belongs_to :transmission
  belongs_to :garment
end
