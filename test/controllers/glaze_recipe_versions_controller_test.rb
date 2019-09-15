require 'test_helper'

class GlazeRecipeVersionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glaze_recipe = glaze_recipes(:one)
  end

  test "should get new" do
    get new_glaze_recipe_glaze_recipe_version_path(@glaze_recipe)
    assert_response :success
  end

  test "should get edit" do
    glaze_recipe_version = glaze_recipe_versions(:one)
    get  edit_glaze_recipe_glaze_recipe_version_path(@glaze_recipe, glaze_recipe_version)
    assert_response :success
  end

  test "should update a glaze_recipe_version" do
    glaze_recipe_version = glaze_recipe_versions(:one)
    params = { glaze_recipe_version: { specific_gravity: 3.2 } }
    put glaze_recipe_glaze_recipe_version_path(@glaze_recipe, glaze_recipe_version, params)
    assert_redirected_to glaze_recipe_path(@glaze_recipe)
  end

  test "should create a new glaze_recipe_version" do
    params = { glaze_recipe_version: { specific_gravity: 3.2 } }
    assert_difference('GlazeRecipeVersion.count') do
      post glaze_recipe_glaze_recipe_versions_path(@glaze_recipe, params)
    end

    assert_redirected_to glaze_recipe_path(@glaze_recipe)
  end

  test "should destroy a glaze_recipe_version" do
    glaze_recipe_version = glaze_recipe_versions(:one)
    delete glaze_recipe_glaze_recipe_version_path(@glaze_recipe, glaze_recipe_version)
    assert_response :success
  end

end
