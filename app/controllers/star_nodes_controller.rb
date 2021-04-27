class StarNodesController < ApplicationController
  before_action :set_star_node, only: %i[ show edit update destroy ]

  # GET /star_nodes or /star_nodes.json
  def index
    @star_nodes = StarNode.all
  end

  # GET /star_nodes/1 or /star_nodes/1.json
  def show
  end

  # GET /star_nodes/new
  def new
    @star_node = StarNode.new
  end

  # GET /star_nodes/1/edit
  def edit
  end

  # POST /star_nodes or /star_nodes.json
  def create
    @star_node = StarNode.new(star_node_params)

    respond_to do |format|
      if @star_node.save
        format.html { redirect_to @star_node, notice: "Star node was successfully created." }
        format.json { render :show, status: :created, location: @star_node }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @star_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /star_nodes/1 or /star_nodes/1.json
  def update
    respond_to do |format|
      if @star_node.update(star_node_params)
        format.html { redirect_to @star_node, notice: "Star node was successfully updated." }
        format.json { render :show, status: :ok, location: @star_node }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @star_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /star_nodes/1 or /star_nodes/1.json
  def destroy
    @star_node.destroy
    respond_to do |format|
      format.html { redirect_to star_nodes_url, notice: "Star node was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_star_node
      @star_node = StarNode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def star_node_params
      params.require(:star_node).permit(:name, :description, :north_star_id)
    end
end
