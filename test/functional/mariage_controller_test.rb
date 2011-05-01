require 'test_helper'

class MariageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get accomodation" do
    get :accomodation
    assert_response :success
  end

  test "should get program" do
    get :program
    assert_response :success
  end

end
