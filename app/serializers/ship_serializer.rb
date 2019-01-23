class ShipSerializer
	include FastJsonapi::ObjectSerializer
  	attributes :id, :name, :health, :color
  	#has_many :scores, serializer: ScoreSerializer
end
