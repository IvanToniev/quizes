class HomeController < ApplicationController
  before_action :authenticate_default_user!

  def index
  end
end
