class DeckController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find params[:id]
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create game_params

  #  redirect_to @user
  end

  private
  # Update these params to reflect game params
    def game_params
      params.require(:post).permit(:post_text, :post_image, :likes, :user_id)
    end

end
