class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to @event
  end

  def show
    @user = User.find(params[:id])
  end

end
