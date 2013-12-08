require 'test_helper'

class HistoryResourcesControllerTest < ActionController::TestCase
  setup do
    @history_resource = history_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_resource" do
    assert_difference('HistoryResource.count') do
      post :create, history_resource: { description: @history_resource.description, period_from: @history_resource.period_from, period_to: @history_resource.period_to, section: @history_resource.section }
    end

    assert_redirected_to history_resource_path(assigns(:history_resource))
  end

  test "should show history_resource" do
    get :show, id: @history_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history_resource
    assert_response :success
  end

  test "should update history_resource" do
    put :update, id: @history_resource, history_resource: { description: @history_resource.description, period_from: @history_resource.period_from, period_to: @history_resource.period_to, section: @history_resource.section }
    assert_redirected_to history_resource_path(assigns(:history_resource))
  end

  test "should destroy history_resource" do
    assert_difference('HistoryResource.count', -1) do
      delete :destroy, id: @history_resource
    end

    assert_redirected_to history_resources_path
  end
end
