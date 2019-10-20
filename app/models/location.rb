class Location < ApplicationRecord
	 belongs_to :country
	 has_many :birdsongs
	 
  validates :longitude, :latitude, presence: true
  validates :longitude, :latitude, uniqueness: true
end