class Type < ApplicationRecord
	has_many :bird_songs
	validates :type_name, presence: true
	validates :type_name, uniqueness: true

	paginates_per 15
end
