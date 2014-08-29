class QuestionsController < ApplicationController

  before_action :set_quiz

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  private
  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end
end
