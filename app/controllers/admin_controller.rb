class AdminController < ApplicationController

  def index

    @decks = Deck.all
    @instances = Instance.all
    @responses = Response.all

    game_data = { :flight => flight, :plane => plane, :reservations => reservations }

    respond_to do |format|
            format.html
            format.json { render json:game_data}
        end
  end

end
