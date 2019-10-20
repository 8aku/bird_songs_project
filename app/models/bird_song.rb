class BirdSong < ApplicationRecord
  belongs_to :country
  belongs_to :location
  belongs_to :bird
  belongs_to :license
  belongs_to :provider
  belongs_to :type

  validates :audio_file, :bird, :license, presence: true
  validates :audio_file, uniqueness: true

  paginates_per 15
  
end
