class License < ApplicationRecord
	has_many :birdsongs

	validates :license_url, presence: true
end
