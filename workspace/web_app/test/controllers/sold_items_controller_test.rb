require 'test_helper'

class SoldItemsControllerTest < ActionController::TestCase
  setup do
    @sold_item = sold_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sold_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sold_item" do
    assert_difference('SoldItem.count') do
      post :create, sold_item: { iid: @sold_item.iid, tstamp: @sold_item.tstamp, uid: @sold_item.uid }
    end

    assert_redirected_to sold_item_path(assigns(:sold_item))
  end

  test "should show sold_item" do
    get :show, id: @sold_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sold_item
    assert_response :success
  end

  test "should update sold_item" do
    patch :update, id: @sold_item, sold_item: { iid: @sold_item.iid, tstamp: @sold_item.tstamp, uid: @sold_item.uid }
    assert_redirected_to sold_item_path(assigns(:sold_item))
  end

  test "should destroy sold_item" do
    assert_difference('SoldItem.count', -1) do
      delete :destroy, id: @sold_item
    end

    assert_redirected_to sold_items_path
  end
end
