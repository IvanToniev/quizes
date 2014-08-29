class QuizController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
  end

  def welcome
    @quiz = Quiz.find(params[:id])
  end

  def goodbye
  end

  def statistics
  end
end
