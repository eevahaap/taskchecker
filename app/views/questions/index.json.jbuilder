json.array!(@questions) do |question|
  json.extract! question, :id, :q1, :q2, :q3, :q4, :q5, :question_name, :ans1, :ans2, :ans3, :ans4, :ans5, :schoolclass_id
  json.url question_url(question, format: :json)
end
