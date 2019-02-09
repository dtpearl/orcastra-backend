class UserController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create post_params

  #  redirect_to @user
  end

  private
    def post_params
      params.require(:post).permit(:post_text, :post_image, :likes, :user_id)
    end


end
