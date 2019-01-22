class ResourceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :resource_type, :level

end
