class Answer < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :user
  belongs_to :question

  def check_answer answer
    Question.find(self.question_id).answer == answer ? true : false
  end

end
