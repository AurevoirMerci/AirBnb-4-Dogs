class Stroll < ApplicationRecord
	has_many :joindogstrolls
	has_many :dogs, through: :joindogstrolls

	belongs_to :dogsitter
	belongs_to :city
end
