class CategoriesController < ApplicationController

  def index

    now = DateTime.now

    if params[:event]
      categ = Category.find(params[:event][:category_id])
      @events = categ.events
    else
      @events = Event.all
    end
    # byebug
    @events = @events.select{|e|e.end_datetime > now}.sort_by{|e| e.start_datetime}
    @categories = Category.all
    @date = now.strftime('%a, %B %e')
    # @time_zone = t
  end

end
