class SessionsController < ApplicationController



    def new
      @user = User.new
    end

    def create
      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        log_in(@user.id)
        redirect_to @user
      else
        flash[:errors] = [ "Something is not correctly filled out" ]
        redirect_to new_session_path
      end
    end

    def destroy
      log_out
      redirect_to new_session_path
    end





end
