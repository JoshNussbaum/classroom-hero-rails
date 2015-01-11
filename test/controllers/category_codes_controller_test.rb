require 'test_helper'

class CategoryCodesControllerTest < ActionController::TestCase
  setup do
    @category_code = category_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_code" do
    assert_difference('CategoryCode.count') do
      post :create, category_code: { category: @category_code.category, categoryType: @category_code.categoryType, code: @category_code.code }
    end

    assert_redirected_to category_code_path(assigns(:category_code))
  end

  test "should show category_code" do
    get :show, id: @category_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_code
    assert_response :success
  end

  test "should update category_code" do
    patch :update, id: @category_code, category_code: { category: @category_code.category, categoryType: @category_code.categoryType, code: @category_code.code }
    assert_redirected_to category_code_path(assigns(:category_code))
  end

  test "should destroy category_code" do
    assert_difference('CategoryCode.count', -1) do
      delete :destroy, id: @category_code
    end

    assert_redirected_to category_codes_path
  end
end
