class Type < ApplicationRecord
	has_many :birdsongs
	validates :type_name, presence: true
	validates :type_name, uniqueness: true
end
