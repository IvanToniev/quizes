require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get quiz_welcome" do
    get :quiz_welcome
    assert_response :success
  end

  test "should get quiz" do
    get :quiz
    assert_response :success
  end

  test "should get quiz_goodbye" do
    get :quiz_goodbye
    assert_response :success
  end

  test "should get quiz_statistics" do
    get :quiz_statistics
    assert_response :success
  end

end
