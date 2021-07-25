class Presenter < ApplicationRecord
    has_many :clothings

    def full_name
    first_name + " " + last_name
  end
end
