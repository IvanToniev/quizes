json.array!(@question_quiz_relations) do |question_quiz_relation|
  json.extract! question_quiz_relation, :id, :question_id, :quiz_id, :show_order
  json.url question_quiz_relation_url(question_quiz_relation, format: :json)
end
