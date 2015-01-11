require 'test_helper'

class StudentUsersControllerTest < ActionController::TestCase
  setup do
    @student_user = student_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_user" do
    assert_difference('StudentUser.count') do
      post :create, student_user: { currentcoins: @student_user.currentcoins, lvl: @student_user.lvl, lvlUpAmount: @student_user.lvlUpAmount, progress: @student_user.progress, totalcoins: @student_user.totalcoins }
    end

    assert_redirected_to student_user_path(assigns(:student_user))
  end

  test "should show student_user" do
    get :show, id: @student_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_user
    assert_response :success
  end

  test "should update student_user" do
    patch :update, id: @student_user, student_user: { currentcoins: @student_user.currentcoins, lvl: @student_user.lvl, lvlUpAmount: @student_user.lvlUpAmount, progress: @student_user.progress, totalcoins: @student_user.totalcoins }
    assert_redirected_to student_user_path(assigns(:student_user))
  end

  test "should destroy student_user" do
    assert_difference('StudentUser.count', -1) do
      delete :destroy, id: @student_user
    end

    assert_redirected_to student_users_path
  end
end
