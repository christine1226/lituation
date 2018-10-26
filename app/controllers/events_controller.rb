class EventsController < ApplicationController

  before_action :authenticate!

  def new
    @event = Event.new
    @user = logged_in_user_id
    @categories = Category.all

  end

  def create
    @event = Event.new(event_params)
    @event.user_id = logged_in_user_id

    if @event.save
      redirect_to categories_path
    else
      @users = User.all
      @categories = Category.all
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to user_path
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :address, :picture, :start_datetime, :end_datetime, :content, :user_id, :category_id)
  end

  def authenticate!
   if logged_in_user_id.nil?
     flash[:errors] = ["Please login to do that"]
     redirect_to login_path
   end
 end

end
