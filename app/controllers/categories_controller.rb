class CategoriesController < ApplicationController

  def index
    @category =
    @categories = Category.all
    @events = Event.all

  end

end
