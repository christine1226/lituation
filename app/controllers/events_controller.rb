class EventsController < ApplicationController

  # before_action :authenticate!, only:[:create]
  before_action :get_event, only:[:show, :edit, :update, :destroy]
  def new
    @event = Event.new
    @users = User.all
    @categories = Category.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
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

  private

  def event_params
    params.require(:event).permit(:event_name, :address, :picture, :start_datetime, :end_datetime, :content, :user_id, :category_id)
  end
 #
 #  def authenticate!
 #   if !@logged_in
 #     flash[:errors] = ["Unable to vote unless logged in"]
 #     redirect_to login_path
 #   end
 # end

 def get_event
   @event = Event.find(params[:id])
 end

end
