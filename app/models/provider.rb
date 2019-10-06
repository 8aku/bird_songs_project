class Provider < ApplicationRecord
	has_many :birdsongs

	validates :provider_name, presence: true
end
