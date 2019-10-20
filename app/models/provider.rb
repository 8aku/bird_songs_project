class Provider < ApplicationRecord
	has_many :bird_songs

	validates :provider_name, presence: true
	validates :provider_name, uniqueness: true

	paginates_per 15
end
