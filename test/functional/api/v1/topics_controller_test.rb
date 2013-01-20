require 'test_helper'

class Api::V1::TopicsControllerTest < ActionController::TestCase
  setup do
    @user = FactoryGirl.create(:user)
    @topic = FactoryGirl.create(:topic)
    sign_in @user
  end

  test "should get index" do
    get :index, :format => :json
    assert_response :success
    assert_not_nil assigns(:topics)
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post :create, :format => :json, topic: { 'content' => 1 }
    end

    assert_response 201
  end

  test "should show topic" do
    get :show, :format => :json, id: @topic
    assert_response :success
  end

  test "should update topic" do
    put :update, :format => :json, id: @topic, topic: { content: 1 }
    assert_response 204
  end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete :destroy, :format => :json, id: @topic
    end

    assert_response 204
  end

end
