class CategoriesController < ApplicationController

  def index
    if params[:event]
      categ = Category.find(params[:event][:category_id])
      @events = categ.events
    else
      @events = Event.all
    end
    @event = Event.new
    @categories = Category.all
  end

end
