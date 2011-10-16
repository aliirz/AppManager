require 'test_helper'

class ApptRequestsControllerTest < ActionController::TestCase
  setup do
    @appt_request = appt_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appt_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appt_request" do
    assert_difference('ApptRequest.count') do
      post :create, :appt_request => @appt_request.attributes
    end

    assert_redirected_to appt_request_path(assigns(:appt_request))
  end

  test "should show appt_request" do
    get :show, :id => @appt_request.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @appt_request.to_param
    assert_response :success
  end

  test "should update appt_request" do
    put :update, :id => @appt_request.to_param, :appt_request => @appt_request.attributes
    assert_redirected_to appt_request_path(assigns(:appt_request))
  end

  test "should destroy appt_request" do
    assert_difference('ApptRequest.count', -1) do
      delete :destroy, :id => @appt_request.to_param
    end

    assert_redirected_to appt_requests_path
  end
end
