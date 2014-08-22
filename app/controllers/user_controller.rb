class UserController < ApplicationController
  def index
    @quizzes = Quiz.all
    @user = current_user
  end

  def quiz_welcome
    @user = current_user
  end

  def quiz
  end

  def quiz_goodbye
  end

  def quiz_statistics
  end
end
