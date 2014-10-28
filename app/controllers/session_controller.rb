class SessionController < ApplicationController
  skip_before_action :authenticate

  def new
  end

  def create
    user = User.where(:username => params[:username]).first
    # user = User.find_by(name: params[:username])
    if user.present? && user.authenticate(params[:password])
      # correct password
      session[:user_id] = user.id
      redirect_to root_path
    else
      # incorrect password
      redirect_to login_path, :notice => 'Incorrect username or password, please try again'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end