require 'test_helper'

class TeacherUsersControllerTest < ActionController::TestCase
  setup do
    @teacher_user = teacher_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_user" do
    assert_difference('TeacherUser.count') do
      post :create, teacher_user: { coins: @teacher_user.coins, hasStamps: @teacher_user.hasStamps, leagueId: @teacher_user.leagueId }
    end

    assert_redirected_to teacher_user_path(assigns(:teacher_user))
  end

  test "should show teacher_user" do
    get :show, id: @teacher_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_user
    assert_response :success
  end

  test "should update teacher_user" do
    patch :update, id: @teacher_user, teacher_user: { coins: @teacher_user.coins, hasStamps: @teacher_user.hasStamps, leagueId: @teacher_user.leagueId }
    assert_redirected_to teacher_user_path(assigns(:teacher_user))
  end

  test "should destroy teacher_user" do
    assert_difference('TeacherUser.count', -1) do
      delete :destroy, id: @teacher_user
    end

    assert_redirected_to teacher_users_path
  end
end
