class Bird < ApplicationRecord
	has_many :birdsongs

	validates :common_name, uniqueness: true
end
