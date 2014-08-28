class QuizController < ApplicationController
  def index
    @quizzes = Quiz.all
    @user = current_user
  end

  def show
  end

  def welcome
    @quiz = Quiz.find(params[:id])
    @user = current_user
  end

  def goodbye
  end

  def statistics
  end
end
