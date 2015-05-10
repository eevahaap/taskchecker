json.array!(@memberships) do |membership|
  json.extract! membership, :id, :teacher_id, :class_id
  json.url membership_url(membership, format: :json)
end
