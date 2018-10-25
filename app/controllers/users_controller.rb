class UsersController < ApplicationController

  before_action :authenticate!, only: [:show, :edit, :update]

  def new
    @new_user = User.new
  end

  def create
    @user = User.new(user_params)

    img = Cloudinary::Uploader.upload(params[:user][:picture])
    @user.picture= img['url']
    if @user.save
      log_in(@user.id)

      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = logged_in_user
    @event = Event.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    img = Cloudinary::Uploader.upload(params[:user][:picture])
    @user.picture= img['url']

    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    Event.all.each do |event|
    if @user.id == event.user_id
      event.destroy
    end
  end
  @user.destroy
  redirect_to @user
end

  private

  def user_params
    params.require(:user).permit(:name, :password, :picture)
  end

  def authenticate!
   if logged_in_user_id.nil?
     flash[:errors] = ["Please login to do that"]
     redirect_to login_path
   end
 end

end
