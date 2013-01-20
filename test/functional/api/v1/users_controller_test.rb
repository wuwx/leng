require 'test_helper'

class Api::V1::UsersControllerTest < ActionController::TestCase
  
  setup do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  test "should get index" do
    get :index, :format => :json
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :format => :json, user: { name: "123", email: '123@email.com', password: "password", password_confirmation: "password" }
    end

    assert_response 201
  end

  test "should show user" do
    get :show, :format => :json, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, :format => :json, id: @user, user: { name: "456" }
    assert_response 204
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, :format => :json, id: @user
    end

    assert_response 204
  end

end
