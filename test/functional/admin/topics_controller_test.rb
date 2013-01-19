require 'test_helper'

class Admin::TopicsControllerTest < ActionController::TestCase
  setup do
    @user = FactoryGirl.create(:user)
    @topic = FactoryGirl.create(:topic)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post :create, topic: { 'content' => 1 }
    end

    assert_redirected_to admin_topic_path(assigns(:topic))
  end

  test "should show topic" do
    get :show, id: @topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topic
    assert_response :success
  end

  test "should update topic" do
    put :update, id: @topic, topic: { content: 1 }
    assert_redirected_to admin_topic_path(assigns(:topic))
  end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete :destroy, id: @topic
    end

    assert_redirected_to admin_topics_path
  end
end
