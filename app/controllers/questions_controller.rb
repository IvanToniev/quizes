class QuestionsController < ApplicationController
  def show
    @questions = quiz.questions
    @user_id = current_user.id
  end

  def solve
    @question = Question.find(params[:question_id])
    @quiz_id = quiz.id
    @user_id = current_user.id
    @answer = Answer.new
  end

  private
  def quiz
    Quiz.find(params[:id])
  end
end
