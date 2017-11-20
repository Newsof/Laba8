require 'test_helper'

class ArmstrongControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end

  test("should get view") do
    get :view
    assert_response :success
  end

end
