require 'test_helper'

class Api::V1::CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = FactoryGirl.create(:comment)
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  test "should get index" do
    get :index, :format => :json
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, :format => :json, comment: {  }
    end

    assert_response 201
  end

  test "should show comment" do
    get :show, :format => :json, id: @comment
    assert_response :success
  end

  test "should update comment" do
    put :update, :format => :json, id: @comment, comment: {  }
    assert_response 204
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, :format => :json, id: @comment
    end

    assert_response 204
  end

end
