json.array!(@answers) do |answer|
  json.extract! answer, :id, :Quiz_id, :User_id, :Question_id, :start_time, :end_time, :success
  json.url answer_url(answer, format: :json)
end
