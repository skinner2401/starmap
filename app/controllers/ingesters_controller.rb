class IngestersController < ApplicationController
  before_action :set_ingester, only: %i[ show edit update destroy ]

  # GET /ingesters or /ingesters.json
  def index
    @ingesters = Ingester.all
  end

  # GET /ingesters/1 or /ingesters/1.json
  def show
  end

  # GET /ingesters/new
  def new
    @ingester = Ingester.new
  end

  # GET /ingesters/1/edit
  def edit
  end

  # POST /ingesters or /ingesters.json
  def create
    @ingester = Ingester.new(ingester_params)

    respond_to do |format|
      if @ingester.save
        format.html { redirect_to @ingester, notice: "Ingester was successfully created." }
        format.json { render :show, status: :created, location: @ingester }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingesters/1 or /ingesters/1.json
  def update
    respond_to do |format|
      if @ingester.update(ingester_params)
        format.html { redirect_to @ingester, notice: "Ingester was successfully updated." }
        format.json { render :show, status: :ok, location: @ingester }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingesters/1 or /ingesters/1.json
  def destroy
    @ingester.destroy
    respond_to do |format|
      format.html { redirect_to ingesters_url, notice: "Ingester was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingester
      @ingester = Ingester.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingester_params
      params.fetch(:ingester, {})
    end
end
