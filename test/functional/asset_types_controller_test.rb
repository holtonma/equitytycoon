require 'test_helper'

class AssetTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asset_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset_type" do
    assert_difference('AssetType.count') do
      post :create, :asset_type => { }
    end

    assert_redirected_to asset_type_path(assigns(:asset_type))
  end

  test "should show asset_type" do
    get :show, :id => asset_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => asset_types(:one).to_param
    assert_response :success
  end

  test "should update asset_type" do
    put :update, :id => asset_types(:one).to_param, :asset_type => { }
    assert_redirected_to asset_type_path(assigns(:asset_type))
  end

  test "should destroy asset_type" do
    assert_difference('AssetType.count', -1) do
      delete :destroy, :id => asset_types(:one).to_param
    end

    assert_redirected_to asset_types_path
  end
end
