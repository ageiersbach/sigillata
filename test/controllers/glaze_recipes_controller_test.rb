require 'test_helper'

class GlazeRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glaze_recipe = glaze_recipes(:one)
  end

  test "should get index" do
    get glaze_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_glaze_recipe_url
    assert_response :success
  end

  test "should create glaze_recipe" do
    assert_difference('GlazeRecipe.count') do
      post glaze_recipes_url, params: { glaze_recipe: { abbreviation: @glaze_recipe.abbreviation, name: @glaze_recipe.name } }
    end

    assert_redirected_to new_glaze_recipe_glaze_recipe_version_path(GlazeRecipe.last)
  end

  test "should show glaze_recipe" do
    get glaze_recipe_url(@glaze_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_glaze_recipe_url(@glaze_recipe)
    assert_response :success
  end

  test "should update glaze_recipe" do
    patch glaze_recipe_url(@glaze_recipe), params: { glaze_recipe: { abbreviation: @glaze_recipe.abbreviation, name: @glaze_recipe.name } }
    assert_redirected_to glaze_recipe_url(@glaze_recipe)
  end

  test "should destroy glaze_recipe" do
    assert_difference('GlazeRecipe.count', -1) do
      delete glaze_recipe_url(@glaze_recipe)
    end

    assert_redirected_to glaze_recipes_url
  end
end
