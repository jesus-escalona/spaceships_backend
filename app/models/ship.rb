class Ship < ApplicationRecord
	has_many :ship_resources
  	has_many :resources, through: :ship_resources
end
