require 'test_helper'

class AuthenticationPageControllerTest < ActionController::TestCase
  test "should get signIn" do
    get :signIn
    assert_response :success
  end

end
