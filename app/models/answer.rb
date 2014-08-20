class Answer < ActiveRecord::Base
  belongs_to :Quiz
  belongs_to :User
  belongs_to :Question
end
