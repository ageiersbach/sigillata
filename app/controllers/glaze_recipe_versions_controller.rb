class GlazeRecipeVersionsController < ApplicationController
  before_action :get_glaze_recipe

  def new
    @glaze_recipe_version = @glaze_recipe.glaze_recipe_versions.new
    @glaze_materials = GlazeMaterial.all.order(:name)
  end

  def edit
    @glaze_recipe_version = GlazeRecipeVersion.find(params[:id])
    @glaze_materials = GlazeMaterial.all.order(:name)
  end

  def update
    @glaze_recipe_version = GlazeRecipeVersion.find(params[:id])
    if @glaze_recipe_version.update(recipe_params)
      redirect_to @glaze_recipe
    else
      render :edit
    end
  end

  def create
    @glaze_recipe_version = @glaze_recipe.glaze_recipe_versions.build(recipe_params)
    if @glaze_recipe_version.save
      redirect_to @glaze_recipe
    else
      render :edit
    end
  end

  def destroy
  end

  def get_glaze_recipe
    @glaze_recipe = GlazeRecipe.find(params[:glaze_recipe_id])
  end

  def recipe_params
    params.require(:glaze_recipe_version).permit(:glaze_recipe_ingredients_attributes => [:id, :glaze_material_id, :amount])
  end
end
