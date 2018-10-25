class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :logged_in?, :logged_in_user, :log_out

  # config.time_zone = 'Eastern Time (US & Canada)'


#this method matches user in the database to user that is signing in
  def log_in(user_id)
    session[:user_id] = user_id
  end

#this method returns the user currently signed in
  def logged_in_user_id
    session[:user_id]
  end

  def logged_in_user
    User.all.find(session[:user_id])
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

  def authenticate!
   if logged_in_user_id.nil?
     flash[:errors] = ["Please login to do that"]
     redirect_to login_path
   end
 end


end
