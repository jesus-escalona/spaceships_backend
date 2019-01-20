class ShipSerializer < ActiveModel::Serializer
  	has_many :resources, through: :ship_resources
  	attributes :id, :name, :health, :color
end
