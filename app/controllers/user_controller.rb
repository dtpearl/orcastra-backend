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
    @user = User.create user_params

  #  redirect_to @user
  end

  private
  # Update these params to reflect user params
    def user_params
      params.require(:post).permit(:name, :game_id)
    end


end
