require 'test_helper'

class Admin::PermissionsControllerTest < ActionController::TestCase
  setup do
    @permission = permissions(:one)
    @user = FactoryGirl.create(:user)
    @user.confirm!
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permission" do
    assert_difference('Permission.count') do
      post :create, permission: { name: 456 }
    end

    assert_redirected_to edit_admin_permission_path(assigns(:permission))
  end

  test "should show permission" do
    get :show, id: @permission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permission
    assert_response :success
  end

  test "should update permission" do
    put :update, id: @permission, permission: { name: 123 }
    assert_redirected_to edit_admin_permission_path(assigns(:permission))
  end

  test "should destroy permission" do
    assert_difference('Permission.count', -1) do
      delete :destroy, id: @permission
    end

    assert_redirected_to admin_permissions_path
  end
end
