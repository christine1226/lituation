class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      log_in_user(@user.id)
      redirect_to event_path
    else
      flash[:errors] = [ "Something is not correctly filled out" ]
      redirect_to new_session_path
    end
  end


end
