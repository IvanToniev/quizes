json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :User_id, :title, :date
  json.url quiz_url(quiz, format: :json)
end
