class Location < ApplicationRecord
  belongs_to :country

  validates :longitude, :latitude, presence: true
end