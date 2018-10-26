class LikesController < ApplicationController

  before_action :find_like, only:[:destroy]
  before_action :authenticate!




  # def create
  #   if @like = Like.create(user_id: session[:user_id], event_id: params[:id])
  #     byebug
  #     redirect_to user_path(session[:user_id])
  #   else
  #     "You can only vote once. SORRY!"
  #     redirect_to categories_path
  #   end
  # end

  def create_like
    @event = Event.find(params[:id])
    if @like = Like.create(user_id: session[:user_id], event_id: params[:id])
      redirect_to categories_path(session[:user_id])
    else
      "You can only vote once. SORRY!"
      redirect_to categories_path
    end
  end

  # def destroy
  #   if !(liked?)
  #     "Can not like"
  #   else
  #     @like.destroy
  #   end
  #   redirect_to user_path(session[:user_id])
  # end



  private

  def liked?
    Like.where(user_id: session[:user_id], event_id: params[:event_id]).exists?
  end

  def find_like
    @event = Event.find(params[:event_id])
    @like = @event.likes.find(params[:id])
  end

  def authenticate!
   if logged_in_user_id.nil?
     flash[:errors] = ["Please login to do that"]
     redirect_to login_path
   end
 end

end
