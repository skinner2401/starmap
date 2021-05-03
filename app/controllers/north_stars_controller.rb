class NorthStarsController < ApplicationController
  before_action :set_north_star, only: %i[ show edit update destroy ]

  # GET /north_stars or /north_stars.json
  def index
    @north_stars = NorthStar.all
  end

  # GET /north_stars/1 or /north_stars/1.json
  def show
  end

  # GET /north_stars/new
  def new
    @north_star = NorthStar.new
  end

  # GET /north_stars/1/edit
  def edit
  end

  # POST /north_stars or /north_stars.json
  def create
    @north_star = NorthStar.new(north_star_params)

    respond_to do |format|
      if @north_star.save
        format.html { redirect_to @north_star, notice: "North star was successfully created." }
        format.json { render :show, status: :created, location: @north_star }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @north_star.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /north_stars/1 or /north_stars/1.json
  def update
    respond_to do |format|
      if @north_star.update(north_star_params)
        format.html { redirect_to @north_star, notice: "North star was successfully updated." }
        format.json { render :show, status: :ok, location: @north_star }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @north_star.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /north_stars/1 or /north_stars/1.json
  def destroy
    @north_star.destroy
    respond_to do |format|
      format.html { redirect_to north_stars_url, notice: "North star was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_north_star
      @north_star = NorthStar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def north_star_params
      params.require(:north_star).permit(:solar_system_id, :name, :description, :data_source)
    end
end
