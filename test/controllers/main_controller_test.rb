require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get vote" do
    get :vote
    assert_response :success
  end

  test "should get scores" do
    get :scores
    assert_response :success
  end

end
