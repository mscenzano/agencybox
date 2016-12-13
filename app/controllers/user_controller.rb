class UserController < ApplicationController
    before_action :authenticate_user!
  
  def show
    @user = current_user

  end
  
  def new
    @user = User.new
  end

  

  def create
    @user = User.create(user_params)
    unless @user
      render 'error'
    else 
      redirect_to user_path(@user.id)
    end
  end



  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :admin, :password_confirmation, :password)
  end

end
