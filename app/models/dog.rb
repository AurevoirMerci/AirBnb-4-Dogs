class Dog < ApplicationRecord
	has_many :joindogstrolls
	has_many :strolls, through: :joindogstrolls
	has_many :dogsitters
	belongs_to :city
end
