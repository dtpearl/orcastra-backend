class DeckController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find params[:id]
  end

  def new
    @deck = Deck.new
  end

  def create
    @Deck = Deck.create deck_params

  #  redirect_to @user
  end

  private
  # Update these params to reflect game params
    def deck_params
      params.require(:post).permit(:name, :sfw)
    end

end
