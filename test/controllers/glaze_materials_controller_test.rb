require 'test_helper'

class GlazeMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glaze_material = glaze_materials(:one)
  end

  test "should get index" do
    get glaze_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_glaze_material_url
    assert_response :success
  end

  test "should create glaze_material" do
    assert_difference('GlazeMaterial.count') do
      post glaze_materials_url, params: { glaze_material: { name: @glaze_material.name } }
    end

    assert_redirected_to glaze_material_url(GlazeMaterial.last)
  end

  test "should show glaze_material" do
    get glaze_material_url(@glaze_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_glaze_material_url(@glaze_material)
    assert_response :success
  end

  test "should update glaze_material" do
    patch glaze_material_url(@glaze_material), params: { glaze_material: { name: @glaze_material.name } }
    assert_redirected_to glaze_material_url(@glaze_material)
  end

  test "should destroy glaze_material" do
    assert_difference('GlazeMaterial.count', -1) do
      delete glaze_material_url(@glaze_material)
    end

    assert_redirected_to glaze_materials_url
  end
end
