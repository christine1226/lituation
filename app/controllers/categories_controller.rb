class CategoriesController < ApplicationController

  def index
    @events = Events.all
    @user
  end
end
