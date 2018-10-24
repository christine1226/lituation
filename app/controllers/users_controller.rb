class UsersController < ApplicationController
  def new
    @new_user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user.id)
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end


  def show
    @user = User.find(params[:id])
    @events = Event.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :picture)
  end

end
