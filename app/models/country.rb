class Country < ApplicationRecord
	has_many :bird_songs
	has_many :locations
	
	validates :country, uniqueness: true
end
