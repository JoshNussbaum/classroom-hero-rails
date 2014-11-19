require 'test_helper'

class ClassJarsControllerTest < ActionController::TestCase
  setup do
    @class_jar = class_jars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_jars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_jar" do
    assert_difference('ClassJar.count') do
      post :create, class_jar: { name: @class_jar.name, progress: @class_jar.progress, total: @class_jar.total, type: @class_jar.type, uid: @class_jar.uid }
    end

    assert_redirected_to class_jar_path(assigns(:class_jar))
  end

  test "should show class_jar" do
    get :show, id: @class_jar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_jar
    assert_response :success
  end

  test "should update class_jar" do
    patch :update, id: @class_jar, class_jar: { name: @class_jar.name, progress: @class_jar.progress, total: @class_jar.total, type: @class_jar.type, uid: @class_jar.uid }
    assert_redirected_to class_jar_path(assigns(:class_jar))
  end

  test "should destroy class_jar" do
    assert_difference('ClassJar.count', -1) do
      delete :destroy, id: @class_jar
    end

    assert_redirected_to class_jars_path
  end
end
