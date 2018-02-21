class UsersController < ApplicationController
  def index
    @users = User.all
    @current_user = session[:user_id]
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params).save
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :role, :email, :password, :password_confirmation)
  end
end
