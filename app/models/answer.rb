class Answer < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :user
  belongs_to :question

  def check_answer answer
    question = Question.find(self.question_id)
    question.answer == answer
  end

end
