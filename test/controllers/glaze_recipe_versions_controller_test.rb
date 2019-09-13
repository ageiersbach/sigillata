require 'test_helper'

class GlazeRecipeVersionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get glaze_recipe_versions_new_url
    assert_response :success
  end

  test "should get edit" do
    get glaze_recipe_versions_edit_url
    assert_response :success
  end

  test "should get update" do
    get glaze_recipe_versions_update_url
    assert_response :success
  end

  test "should get create" do
    get glaze_recipe_versions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get glaze_recipe_versions_destroy_url
    assert_response :success
  end

end
