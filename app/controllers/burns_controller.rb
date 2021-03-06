class BurnsController < ApplicationController
  before_action :set_burn, only: [:show, :edit, :update, :destroy]

  # GET /burns
  # GET /burns.json
  def index
    @burns = Burn.all
  end

  # GET /burns/1
  # GET /burns/1.json
  def show
    # json for burns/:id
  end

  # GET /burns/new
  def new
    @burn = Burn.new
  end

  # GET /burns/1/edit
  def edit
  end

  # POST /burns
  # POST /burns.json
  def create
    @burn = Burn.new(burn_params)

    respond_to do |format|
      if @burn.save
        format.html { redirect_to @burn, notice: 'Burn was successfully created.' }
        format.json { render :show, status: :created, location: @burn }
      else
        format.html { render :new }
        format.json { render json: @burn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /burns/1
  # PATCH/PUT /burns/1.json
  def update
    respond_to do |format|
      if @burn.update(burn_params)
        format.html { redirect_to @burn, notice: 'Burn was successfully updated.' }
        format.json { render :show, status: :ok, location: @burn }
      else
        format.html { render :edit }
        format.json { render json: @burn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burns/1
  # DELETE /burns/1.json
  def destroy
    @burn.destroy
    respond_to do |format|
      format.html { redirect_to burns_url, notice: 'Burn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_burn
      @burn = Burn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def burn_params
      params.require(:burn).permit(:game_id, :response_id, :played, :user_id, :round_id)
    end
end
