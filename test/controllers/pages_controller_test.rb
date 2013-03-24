require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get message" do
    get :message
    assert_response :success
  end

  test "should get honor" do
    get :honor
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
