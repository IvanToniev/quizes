class QuestionsController < ApplicationController
  def show
    @questions = quiz.questions
  end

  def solve
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  private
  def quiz
    Quiz.find(params[:id])
  end
end
