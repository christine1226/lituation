class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @events = Event.all
  end

end
