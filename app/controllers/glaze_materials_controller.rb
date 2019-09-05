class GlazeMaterialsController < ApplicationController
  before_action :set_glaze_material, only: [:show, :edit, :update, :destroy]

  # GET /glaze_materials
  # GET /glaze_materials.json
  def index
    @glaze_materials = GlazeMaterial.all
  end

  # GET /glaze_materials/1
  # GET /glaze_materials/1.json
  def show
  end

  # GET /glaze_materials/new
  def new
    @glaze_material = GlazeMaterial.new
  end

  # GET /glaze_materials/1/edit
  def edit
  end

  # POST /glaze_materials
  # POST /glaze_materials.json
  def create
    @glaze_material = GlazeMaterial.new(glaze_material_params)

    respond_to do |format|
      if @glaze_material.save
        format.html { redirect_to @glaze_material, notice: 'Glaze material was successfully created.' }
        format.json { render :show, status: :created, location: @glaze_material }
      else
        format.html { render :new }
        format.json { render json: @glaze_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glaze_materials/1
  # PATCH/PUT /glaze_materials/1.json
  def update
    respond_to do |format|
      if @glaze_material.update(glaze_material_params)
        format.html { redirect_to @glaze_material, notice: 'Glaze material was successfully updated.' }
        format.json { render :show, status: :ok, location: @glaze_material }
      else
        format.html { render :edit }
        format.json { render json: @glaze_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glaze_materials/1
  # DELETE /glaze_materials/1.json
  def destroy
    @glaze_material.destroy
    respond_to do |format|
      format.html { redirect_to glaze_materials_url, notice: 'Glaze material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glaze_material
      @glaze_material = GlazeMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glaze_material_params
      params.require(:glaze_material).permit(:name)
    end
end
