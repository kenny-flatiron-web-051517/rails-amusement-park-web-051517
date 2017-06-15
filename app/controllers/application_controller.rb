class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :is_admin?, :user_params, :is_user?

  def is_user?
    !!session[:user_id]
  end

  def logged_in?
    redirect_to '/' unless is_user?
  end

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_admin?
    current_user.admin
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :nausea, :happiness, :tickets, :height, :admin)
  end
end
