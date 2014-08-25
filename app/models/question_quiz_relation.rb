class QuestionQuizRelation < ActiveRecord::Base
  include RankedModel

  belongs_to :question
  belongs_to :quiz

  ranks :question_order, with_same: :quiz_id, column: 'show_order'

end
