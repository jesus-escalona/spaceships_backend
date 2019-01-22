class ShipSerializer
	include FastJsonapi::ObjectSerializer
  	attributes :id, :name, :health, :color
  	has_many :resources, serializer: ResourceSerializer
end
