class Bird < ApplicationRecord
	has_many :bird_songs

	validates :common_name, uniqueness: true

	paginates_per 15

end
