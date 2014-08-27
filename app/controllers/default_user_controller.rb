# TODO < AdminApplicationController. ..
class DefaultUserController < ApplicationController

  def index
    @users = DefaultUser.all
  end

  def destroy
    user = DefaultUser.find(params[:user_id])

    if user.destroy
      redirect_to users_path, notice: 'User deleted!'
    end
  end

  def change_password
    @user = DefaultUser.find(params[:user_id])
  end

  def edit
    @user = DefaultUser.find(params[:user_id])
  end

  def show
    redirect_to default_user_index_path
  end

  def update
    @user = DefaultUser.find(params[:id])

    respond_to do |format|
      if @user.update(params.require(:default_user).permit!)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

end
