class BurnController < ApplicationController

# create
def create
  @burn = Burn.create burn_params
end

# destroy
def destroy
  burn = Burn.find params[:id]
  burn.destroy
  redirect_to user_path(@current_user)
  end

private
  def burn_params
    params.require(:post).permit(:game_id, :response_id)
  end


end
