# TODO < AdminApplicationController. ..
class Admin::UsersController < Admin::AdminApplicationController

  def index
    @users = User.all
  end

  def destroy
    user = User.find(params[:user_id])

    if user.destroy
      redirect_to admin_users_path, notice: 'User deleted!'
    end
  end

  def change_password
    @user = User.find(params[:user_id])
  end

  def edit_admin
    @user = User.find(params[:user_id])
  end

  def show
    redirect_to admin_users_path
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update(params.require(:user).permit!)
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
end
