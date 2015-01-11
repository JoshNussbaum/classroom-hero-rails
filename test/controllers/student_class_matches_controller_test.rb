require 'test_helper'

class StudentClassMatchesControllerTest < ActionController::TestCase
  setup do
    @student_class_match = student_class_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_class_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_class_match" do
    assert_difference('StudentClassMatch.count') do
      post :create, student_class_match: { cid: @student_class_match.cid, sid: @student_class_match.sid }
    end

    assert_redirected_to student_class_match_path(assigns(:student_class_match))
  end

  test "should show student_class_match" do
    get :show, id: @student_class_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_class_match
    assert_response :success
  end

  test "should update student_class_match" do
    patch :update, id: @student_class_match, student_class_match: { cid: @student_class_match.cid, sid: @student_class_match.sid }
    assert_redirected_to student_class_match_path(assigns(:student_class_match))
  end

  test "should destroy student_class_match" do
    assert_difference('StudentClassMatch.count', -1) do
      delete :destroy, id: @student_class_match
    end

    assert_redirected_to student_class_matches_path
  end
end
