json.array!(@answers) do |answer|
  json.extract! answer, :id, :quiz_id, :user_id, :question_id, :start_time, :end_time, :success
  json.url answer_url(answer, format: :json)
end
