json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :username, :password, :first_name, :last_name
  json.url teacher_url(teacher, format: :json)
end
