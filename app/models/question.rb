class Question < ActiveRecord::Base
  has_many :question_quiz_relations
  has_many :quizzes, through: :question_quiz_relations
  validates :title, length: {in: 2..255}
  validates :content, length: {minimum: 10}
  validates :answer, presence: true
end
