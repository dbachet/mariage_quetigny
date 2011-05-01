require 'test_helper'

class PostAnswersControllerTest < ActionController::TestCase
  setup do
    @post_answer = post_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_answer" do
    assert_difference('PostAnswer.count') do
      post :create, :post_answer => @post_answer.attributes
    end

    assert_redirected_to post_answer_path(assigns(:post_answer))
  end

  test "should show post_answer" do
    get :show, :id => @post_answer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post_answer.to_param
    assert_response :success
  end

  test "should update post_answer" do
    put :update, :id => @post_answer.to_param, :post_answer => @post_answer.attributes
    assert_redirected_to post_answer_path(assigns(:post_answer))
  end

  test "should destroy post_answer" do
    assert_difference('PostAnswer.count', -1) do
      delete :destroy, :id => @post_answer.to_param
    end

    assert_redirected_to post_answers_path
  end
end
