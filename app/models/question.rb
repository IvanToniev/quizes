class Question < ActiveRecord::Base
  has_many :question_quiz_relations
  has_many :quizzes, through: :question_quiz_relations
end
