class Location < ApplicationRecord
	 belongs_to :country
	 has_many :bird_songs
	 
  validates :longitude, :latitude, presence: true
  validates :longitude, :latitude, uniqueness: true
end