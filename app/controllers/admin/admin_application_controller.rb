class Admin::AdminApplicationController < ApplicationController
  before_action :verify_only_admins

  private
  def verify_only_admins
    # TODO
  end
end