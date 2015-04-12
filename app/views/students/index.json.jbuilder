json.array!(@students) do |student|
  json.extract! student, :id, :username, :password, :first_name, :last_name, :school_class
  json.url student_url(student, format: :json)
end
