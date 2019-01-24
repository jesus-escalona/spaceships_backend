class ShipSerializer
	include FastJsonapi::ObjectSerializer
  attributes :id, :name, :health, :color, :status, :x, :y, :angle
  #has_many :scores, serializer: ScoreSerializer
end
