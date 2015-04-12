json.array!(@answers) do |answer|
  json.extract! answer, :id, :username, :ans1, :ans2, :ans3, :ans4, :ans5, :res1, :res2, :res3, :res4, :res5, :total_res
  json.url answer_url(answer, format: :json)
end
