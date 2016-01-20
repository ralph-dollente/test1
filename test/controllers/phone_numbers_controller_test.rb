require 'test_helper'

class PhoneNumbersControllerTest < ActionController::TestCase
  test "should get random" do
    get :create
    assert_response :success
  end

end
