class StargateManualOverridesController < ApplicationController
  before_action :set_stargate_manual_override, only: %i[ show edit update destroy ]

  # GET /stargate_manual_overrides or /stargate_manual_overrides.json
  def index
    @stargate_manual_overrides = StargateManualOverride.all
  end

  # GET /stargate_manual_overrides/1 or /stargate_manual_overrides/1.json
  def show
  end

  # GET /stargate_manual_overrides/new
  def new
    @stargate_manual_override = StargateManualOverride.new
  end

  # GET /stargate_manual_overrides/1/edit
  def edit
  end

  # POST /stargate_manual_overrides or /stargate_manual_overrides.json
  def create
    @stargate_manual_override = StargateManualOverride.new(stargate_manual_override_params)

    respond_to do |format|
      if @stargate_manual_override.save
        format.html { redirect_to @stargate_manual_override, notice: "Stargate manual override was successfully created." }
        format.json { render :show, status: :created, location: @stargate_manual_override }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stargate_manual_override.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stargate_manual_overrides/1 or /stargate_manual_overrides/1.json
  def update
    respond_to do |format|
      if @stargate_manual_override.update(stargate_manual_override_params)
        format.html { redirect_to @stargate_manual_override, notice: "Stargate manual override was successfully updated." }
        format.json { render :show, status: :ok, location: @stargate_manual_override }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stargate_manual_override.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stargate_manual_overrides/1 or /stargate_manual_overrides/1.json
  def destroy
    @stargate_manual_override.destroy
    respond_to do |format|
      format.html { redirect_to stargate_manual_overrides_url, notice: "Stargate manual override was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stargate_manual_override
      @stargate_manual_override = StargateManualOverride.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stargate_manual_override_params
      params.require(:stargate_manual_override).permit(:original_start_id, :original_end_id, :start_id, :end_id, :bloacking, :start_date, :end_date)
    end
end
