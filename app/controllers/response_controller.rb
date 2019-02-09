class ResponseController < ApplicationController

  def index
    @responses = Response.all
  end

  def show
    @response = Response.find params[:id]
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.create response_params

  #  redirect_to @user
  end

  private
  # Update these params to reflect user params
    def response_params
      params.require(:post).permit(:card, :deck_id)
    end


end
