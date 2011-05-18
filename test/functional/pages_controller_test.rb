require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get changeons" do
    get :changeons
    assert_response :success
  end

end
