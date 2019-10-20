class Country < ApplicationRecord
	has_many :birdsongs

	validates :country, uniqueness: true
end
