class Transmission < ApplicationRecord
  has_many :clothings

  def full_transmission
    date.to_formatted_s(:long)  + " Numero de Trnsmision:" + pnumber.to_s
end

end
