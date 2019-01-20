class Resource < ApplicationRecord
  has_many :ship_resources
  has_many :ships, through: :ship_resources
end
