require 'test_helper'

class MediaObjectsControllerTest < ActionController::TestCase
  setup do
    @media_object = media_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_object" do
    assert_difference('MediaObject.count') do
      post :create, media_object: { step_id: @media_object.step_id, url: @media_object.url }
    end

    assert_redirected_to media_object_path(assigns(:media_object))
  end

  test "should show media_object" do
    get :show, id: @media_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_object
    assert_response :success
  end

  test "should update media_object" do
    patch :update, id: @media_object, media_object: { step_id: @media_object.step_id, url: @media_object.url }
    assert_redirected_to media_object_path(assigns(:media_object))
  end

  test "should destroy media_object" do
    assert_difference('MediaObject.count', -1) do
      delete :destroy, id: @media_object
    end

    assert_redirected_to media_path
  end
end
