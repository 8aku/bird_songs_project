class License < ApplicationRecord
	has_many :bird_songs

	validates :license_url, presence: true

	paginates_per 15
end
