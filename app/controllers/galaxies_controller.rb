class GalaxiesController < ApplicationController
  before_action :set_galaxy, only: %i[ show edit update destroy ]

  # GET /galaxies or /galaxies.json
  def index
    @galaxies = Galaxy.all
  end

  # GET /galaxies/1 or /galaxies/1.json
  def show
  end

  # GET /galaxies/new
  def new
    @galaxy = Galaxy.new
  end

  # GET /galaxies/1/edit
  def edit
  end

  # POST /galaxies or /galaxies.json
  def create
    @galaxy = Galaxy.new(galaxy_params)

    respond_to do |format|
      if @galaxy.save
        format.html { redirect_to @galaxy, notice: "Galaxy was successfully created." }
        format.json { render :show, status: :created, location: @galaxy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @galaxy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galaxies/1 or /galaxies/1.json
  def update
    respond_to do |format|
      if @galaxy.update(galaxy_params)
        format.html { redirect_to @galaxy, notice: "Galaxy was successfully updated." }
        format.json { render :show, status: :ok, location: @galaxy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @galaxy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galaxies/1 or /galaxies/1.json
  def destroy
    @galaxy.destroy
    respond_to do |format|
      format.html { redirect_to galaxies_url, notice: "Galaxy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galaxy
      @galaxy = Galaxy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def galaxy_params
      params.require(:galaxy).permit(:name)
    end
end
