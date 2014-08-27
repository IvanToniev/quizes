class DefaultUserController < ApplicationController
  # before_action :make_admin

  def index
    @users = DefaultUser.all
  end

  def destroy
    user = DefaultUser.find(params[:user_id])

    if user.destroy
      redirect_to users_path, notice: 'User deleted!'
    end
  end

  # def make_admin
  #   id = params[:id]
  #   user = DefaultUser.find(id)
  #   user.admin = true
  #   user.save
  # end

end
