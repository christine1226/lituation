class ApplicationController < ActionController::Base

  # before_action :create_event

  # def create_event
  #   if session[:user_id]
  #     @user = User.find(session[:user_id])
  #
  #   end
  # end
  private
  @logged_in = !!@user
  @message = flash[:message]
  @errors = flash[:errors]

  def log_in(user_id)
    session[:user_id] = user_id
  end

  def logged_in_user_id
    session[:user_id]
  end



  def authorized?(user_id)
    logged_in_user_id == user_id
  end

end
