class Admin::UsersController < Admin::ApplicationController
  before_action :set_user, only: [:destroy, :change_password, :edit_admin, :update]

  def index
    @users = User.all
  end

  def destroy
    if @user.destroy
      redirect_to admin_users_path, notice: 'User deleted!'
    end
  end

  def change_password
    @user
  end

  def edit_admin
    @user
  end

  def show
    redirect_to admin_users_path
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
      else
        #TODO add notices
        format.html { redirect_to [:change_password, :admin, @user] }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit!
    end
end
