class Quiz < ActiveRecord::Base
  belongs_to :user
  has_many :question_quiz_relations
  has_many :questions, through: :question_quiz_relations
end
