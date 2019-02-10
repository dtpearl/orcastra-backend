class InstancesController < ApplicationController

  def index
    @instances = Instance.all
  end

  def show
    @instance = Instance.find params[:id]
  end

  def new
    @instance = Instance.new
  end

  def create
    @instance = Instance.create instance_params

  #  redirect_to @user
  end

  def edit_multiple_instances
    
  end

  private
  # Update these params to reflect user params
    def instance_params
      params.require(:post).permit(:card, :deck_id)
    end


end
