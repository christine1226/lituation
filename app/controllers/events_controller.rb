class EventsController < ApplicationController

  def new
    @event = Event.new
    @users = User.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      @users = User.all
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

  def event_params
    params.require(:event).permit(:event_name, :address, :picture, :start_datetime, :end_datetime, :content, :user_id, :category_id)
  end

end
