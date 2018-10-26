class LikesController < ApplicationController

  before_action :find_like, only:[:destroy]
  before_action :authenticate!
  before_action :liked?



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
    @like = Like.new(user_id: session[:user_id], event_id: params[:id])

    if !liked?
      @like.save
      redirect_to categories_path(session[:user_id])
    else
      flash[:notice] = "You can only vote once. SORRY!"
      redirect_to categories_path
    end
  end




  private

  def liked?
    Like.where(user_id: session[:user_id], event_id: params[:id]).exists?
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
