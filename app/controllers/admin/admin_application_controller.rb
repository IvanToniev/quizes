class Admin::AdminApplicationController < ApplicationController
  before_action :verify_only_admins

  private
  def verify_only_admins
    if current_user.nil? || !current_user.admin?
      redirect_to root_path
    end
  end
end