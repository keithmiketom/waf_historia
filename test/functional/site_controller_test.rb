require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get FAQ" do
    get :FAQ
    assert_response :success
  end

  test "should get links" do
    get :links
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

end
