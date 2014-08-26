class Quiz < ActiveRecord::Base
  belongs_to :user
  has_many :question_quiz_relations
  has_many :questions, through: :question_quiz_relations


  def move_question_up(question_id)
    move_question(self.id, question_id, 'up')
  end

  def move_question_down(question_id)
    move_question(self.id, question_id, 'down')
  end

  private
  def move_question(quiz_id, question_id, direction)
    question_quiz_relation = QuestionQuizRelation.find_by(
      quiz: quiz_id,
      question_id: question_id
    )

    question_quiz_relation.update_attribute(:show_order, direction)
    question_quiz_relation.save
  end
end
