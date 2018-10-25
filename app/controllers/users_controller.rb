class UsersController < ApplicationController

  before_action :get_user, only:[:show, :edit, :update, :destroy, :create_event]


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

  def new_event
   @event = Event.new
   @user = User.find(params[:id])
   @categories = Category.all
 end

  def create_event
  @user = User.find(params[:id])
  @categories = Category.all
  @event = Event.create(:event_name => event_params[:event_name], :address => event_params[:address],
  :picture => event_params[:picture], :start_datetime => event_params[:start_datetime], :end_datetime => event_params[:end_datetime],
  :content => event_params[:content], :user_id => event_params[:user_id], :category_id => event_params[:category_id])
  if @event.valid?
    @event.save
    redirect_to create_user_event
  else
    render 'new_event'
  end
end


  def show
    @user = User.find(params[:id])
    @event = Event.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
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

  def event_params
    params.require(:event).permit(:event_name, :address, :picture, :start_datetime, :end_datetime, :content, :user_id, :category_id)
  end

  def get_user
    @user = User.find(params[:id])
  end

  # def authenticate!
  #  if !@logged_in
  #    flash[:errors] = ["Unable to vote unless logged in"]
  #    redirect_to login_path
  #  end

end
