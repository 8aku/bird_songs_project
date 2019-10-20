class Provider < ApplicationRecord
	has_many :birdsongs

	validates :provider_name, presence: true
	validates :provider_name, uniqueness: true
end
