require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get company" do
    get :company
    assert_response :success
  end

  test "should get founders" do
    get :founders
    assert_response :success
  end

end
