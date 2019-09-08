class GlazeRecipesController < ApplicationController
  before_action :set_glaze_recipe, only: [:show, :edit, :update, :destroy]

  # GET /glaze_recipes
  # GET /glaze_recipes.json
  def index
    @glaze_recipes = GlazeRecipe.all
  end

  # GET /glaze_recipes/1
  # GET /glaze_recipes/1.json
  def show
  end

  # GET /glaze_recipes/new
  def new
    @glaze_recipe = GlazeRecipe.new
  end

  # GET /glaze_recipes/1/edit
  def edit
  end

  # POST /glaze_recipes
  # POST /glaze_recipes.json
  def create
    @glaze_recipe = GlazeRecipe.new(glaze_recipe_params)

    respond_to do |format|
      if @glaze_recipe.save
        format.html { redirect_to @glaze_recipe, notice: 'Glaze recipe was successfully created.' }
        format.json { render :show, status: :created, location: @glaze_recipe }
      else
        format.html { render :new }
        format.json { render json: @glaze_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glaze_recipes/1
  # PATCH/PUT /glaze_recipes/1.json
  def update
    respond_to do |format|
      if @glaze_recipe.update(glaze_recipe_params)
        format.html { redirect_to @glaze_recipe, notice: 'Glaze recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @glaze_recipe }
      else
        format.html { render :edit }
        format.json { render json: @glaze_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glaze_recipes/1
  # DELETE /glaze_recipes/1.json
  def destroy
    @glaze_recipe.destroy
    respond_to do |format|
      format.html { redirect_to glaze_recipes_url, notice: 'Glaze recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glaze_recipe
      @glaze_recipe = GlazeRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glaze_recipe_params
      params.require(:glaze_recipe).permit(:name, :abbreviation)
    end
end
