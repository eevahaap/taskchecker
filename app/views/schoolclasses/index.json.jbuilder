json.array!(@schoolclasses) do |schoolclass|
  json.extract! schoolclass, :id, :name
  json.url schoolclass_url(schoolclass, format: :json)
end
