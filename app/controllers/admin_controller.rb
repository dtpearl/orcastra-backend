class AdminController < ApplicationController

  def index

    @decks = Deck.all
    @instances = Instance.all
    @responses = Response.all

    game_data = { :decks => @decks, :instances => @instances, :responses => @responses }

    respond_to do |format|
            format.html
            format.json { render json:game_data}
        end
  end

end
