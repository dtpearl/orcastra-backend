class RoundsController < ApplicationController

  def index
    @rounds = Round.all

    respond_to do |format|
      format.html
      format.json { render json:@rounds}
    end
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
<<<<<<< HEAD
      params.require(:post).permit(:game_id, :number, :likes, :instance_id, :winner_id, :master_id, :winning_card_id)
=======
      params.require(:round).permit(:game_id, :master_id, :number)
>>>>>>> f4582b67300556040ce8dc89c99c954b52c052fa
    end


end
