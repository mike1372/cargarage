class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

 	before_action :authenticate

  private

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  helper_method :current_user

  def logged_in?
    !!current_user
  end
  
	helper_method :logged_in?

  def authenticate
  	redirect_to login_path unless logged_in?
	end
end
