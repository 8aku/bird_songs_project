class Type < ApplicationRecord
	has_many :birdsongs
	validates :type, presence: true
end
