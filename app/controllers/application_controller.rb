class ApplicationController < ActionController::Base

  #

  config.time_zone = 'Eastern Time (US & Canada)'

  # before_action :create_event
  #
  # def create_event
  #   if session[:user_id]
  #     @user = User.find(session[:user_id])
  #     redirect_to @user
  #   end
  #     @message = flash[:message]
  #     @errors = flash[:errors]
  #     @logged_in = !!@user
  # end

  protect_from_forgery with: :exception

  helper_method :logged_in_user_id, :logged_in?

#this method matches user in the database to user that is signing in
  def log_in(user_id)
    session[:user_id] = user_id
  end

#this method returns the user currently signed in
  def logged_in_user_id
    session[:user_id]
  end

  def log_out
    session[:user_id] = nil
  end

  def logged_in?
   !!logged_in_user_id
  end


  #authorizes user that is logging in is the same user currently signed in
  def authorized?(user_id)
    logged_in_user_id == user_id
  end

end
