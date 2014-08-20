class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.where(is_admin: false).last
  end

  def current_user
    User.where(is_admin: false).last
  end

end
