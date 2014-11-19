require 'test_helper'

class EarnedPointsControllerTest < ActionController::TestCase
  setup do
    @earned_point = earned_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:earned_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create earned_point" do
    assert_difference('EarnedPoint.count') do
      post :create, earned_point: { category_code: @earned_point.category_code, earnId: @earned_point.earnId, earnTime: @earned_point.earnTime }
    end

    assert_redirected_to earned_point_path(assigns(:earned_point))
  end

  test "should show earned_point" do
    get :show, id: @earned_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @earned_point
    assert_response :success
  end

  test "should update earned_point" do
    patch :update, id: @earned_point, earned_point: { category_code: @earned_point.category_code, earnId: @earned_point.earnId, earnTime: @earned_point.earnTime }
    assert_redirected_to earned_point_path(assigns(:earned_point))
  end

  test "should destroy earned_point" do
    assert_difference('EarnedPoint.count', -1) do
      delete :destroy, id: @earned_point
    end

    assert_redirected_to earned_points_path
  end
end
