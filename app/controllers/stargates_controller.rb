class StargatesController < ApplicationController
  before_action :set_stargate, only: %i[ show edit update destroy ]

  # GET /stargates or /stargates.json
  def index
    @stargates = Stargate.all
  end

  # GET /stargates/1 or /stargates/1.json
  def show
  end

  # GET /stargates/new
  def new
    @stargate = Stargate.new
  end

  # GET /stargates/1/edit
  def edit
  end

  # POST /stargates or /stargates.json
  def create
    @stargate = Stargate.new(stargate_params)

    respond_to do |format|
      if @stargate.save
        format.html { redirect_to @stargate, notice: "Stargate was successfully created." }
        format.json { render :show, status: :created, location: @stargate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stargate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stargates/1 or /stargates/1.json
  def update
    respond_to do |format|
      if @stargate.update(stargate_params)
        format.html { redirect_to @stargate, notice: "Stargate was successfully updated." }
        format.json { render :show, status: :ok, location: @stargate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stargate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stargates/1 or /stargates/1.json
  def destroy
    @stargate.destroy
    respond_to do |format|
      format.html { redirect_to stargates_url, notice: "Stargate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stargate
      @stargate = Stargate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stargate_params
      params.require(:stargate).permit(:automatic, :source, :start_id, :end_id, :blocking)
    end
end
