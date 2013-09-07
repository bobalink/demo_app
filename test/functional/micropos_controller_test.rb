require 'test_helper'

class MicroposControllerTest < ActionController::TestCase
  setup do
    @micropo = micropos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropo" do
    assert_difference('Micropo.count') do
      post :create, micropo: @micropo.attributes
    end

    assert_redirected_to micropo_path(assigns(:micropo))
  end

  test "should show micropo" do
    get :show, id: @micropo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropo.to_param
    assert_response :success
  end

  test "should update micropo" do
    put :update, id: @micropo.to_param, micropo: @micropo.attributes
    assert_redirected_to micropo_path(assigns(:micropo))
  end

  test "should destroy micropo" do
    assert_difference('Micropo.count', -1) do
      delete :destroy, id: @micropo.to_param
    end

    assert_redirected_to micropos_path
  end
end
