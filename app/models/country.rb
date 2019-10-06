class Country < ApplicationRecord
	has_many :locations
	has_many :birdsongs
end
