class ShipSerializer
	include FastJsonapi::ObjectSerializer
  attributes :id, :name, :health, :color, :status
  #has_many :scores, serializer: ScoreSerializer
end
