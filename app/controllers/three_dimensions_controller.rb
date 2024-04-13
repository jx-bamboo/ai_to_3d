class ThreeDimensionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_three_dimension, only: %i[ show edit update destroy ]

  # GET /three_dimensions or /three_dimensions.json
  def index
    @three_dimensions = ThreeDimension.all
  end

  # GET /three_dimensions/1 or /three_dimensions/1.json
  def show
  end

  # GET /three_dimensions/new
  def new
    @three_dimension = ThreeDimension.new
  end

  # GET /three_dimensions/1/edit
  def edit
  end

  # POST /three_dimensions or /three_dimensions.json
  def create
    @three_dimension = ThreeDimension.new(three_dimension_params)

    respond_to do |format|
      if @three_dimension.save
        format.html { redirect_to three_dimension_url(@three_dimension), notice: "Three dimension was successfully created." }
        format.json { render :show, status: :created, location: @three_dimension }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @three_dimension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /three_dimensions/1 or /three_dimensions/1.json
  def update
    respond_to do |format|
      if @three_dimension.update(three_dimension_params)
        format.html { redirect_to three_dimension_url(@three_dimension), notice: "Three dimension was successfully updated." }
        format.json { render :show, status: :ok, location: @three_dimension }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @three_dimension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /three_dimensions/1 or /three_dimensions/1.json
  def destroy
    @three_dimension.destroy!

    respond_to do |format|
      format.html { redirect_to three_dimensions_url, notice: "Three dimension was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_three_dimension
      @three_dimension = ThreeDimension.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def three_dimension_params
      params.require(:three_dimension).permit(:title, :description, :thumbnail, :schematic, :litematic, :nbt, :glb, :obj, :stl, :fbx, :usd, :draft_mark, :status, :user_id)
    end
end
