class CategoriesController < ApplicationController

  def index
    @events = Event.all
    @user = User.all
  end
end
