class RoundsController < ApplicationController

  def index
    @rounds = Round.all
  end

  def show
    @round = Round.find params[:id]
  end

  def new
    @round = Round.new
  end

  def create
    @round = Round.create user_params

  #  redirect_to @user
  end

  private
  # Update these params to reflect user params
    def round_params
      params.require(:post).permit(:game_id, :number, :likes, :instance_id, :winner_id, :master_id, :winning_card_id)
    end


end
