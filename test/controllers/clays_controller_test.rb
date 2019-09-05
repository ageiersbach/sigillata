require 'test_helper'

class ClaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clay = clays(:one)
  end

  test "should get index" do
    get clays_url
    assert_response :success
  end

  test "should get new" do
    get new_clay_url
    assert_response :success
  end

  test "should create clay" do
    assert_difference('Clay.count') do
      post clays_url, params: { clay: { cone: @clay.cone, name: @clay.name } }
    end

    assert_redirected_to clay_url(Clay.last)
  end

  test "should show clay" do
    get clay_url(@clay)
    assert_response :success
  end

  test "should get edit" do
    get edit_clay_url(@clay)
    assert_response :success
  end

  test "should update clay" do
    patch clay_url(@clay), params: { clay: { cone: @clay.cone, name: @clay.name } }
    assert_redirected_to clay_url(@clay)
  end

  test "should destroy clay" do
    assert_difference('Clay.count', -1) do
      delete clay_url(@clay)
    end

    assert_redirected_to clays_url
  end
end
