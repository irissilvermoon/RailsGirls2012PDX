require 'test_helper'

class MfnwsControllerTest < ActionController::TestCase
  setup do
    @mfnw = mfnws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mfnws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mfnw" do
    assert_difference('Mfnw.count') do
      post :create, mfnw: { genre: @mfnw.genre, name: @mfnw.name, picture: @mfnw.picture }
    end

    assert_redirected_to mfnw_path(assigns(:mfnw))
  end

  test "should show mfnw" do
    get :show, id: @mfnw
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mfnw
    assert_response :success
  end

  test "should update mfnw" do
    put :update, id: @mfnw, mfnw: { genre: @mfnw.genre, name: @mfnw.name, picture: @mfnw.picture }
    assert_redirected_to mfnw_path(assigns(:mfnw))
  end

  test "should destroy mfnw" do
    assert_difference('Mfnw.count', -1) do
      delete :destroy, id: @mfnw
    end

    assert_redirected_to mfnws_path
  end
end
