class SessionsController < ApplicationController

    def new
      @user = User.new
    end

    def create
      @user = User.find_by(name: params[:name])
      #method checks if user name matches user password
      if @user && @user.authenticate(params[:password])
        log_in(@user.id)
        redirect_to @user
      else
        #currently working on flash errors
        flash[:errors] = [ "Something is not correctly filled out" ]
        redirect_to login_path
      end
    end

    def destroy
      log_out
      redirect_to login_path
    end



end
