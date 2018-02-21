class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path, alert: "There was a problem with your login, try again"
    end
  end

  def logout
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
