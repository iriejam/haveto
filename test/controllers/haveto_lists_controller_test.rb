require 'test_helper'

class HavetoListsControllerTest < ActionController::TestCase
  setup do
    @haveto_list = haveto_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haveto_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haveto_list" do
    assert_difference('HavetoList.count') do
      post :create, haveto_list: { description: @haveto_list.description, title: @haveto_list.title }
    end

    assert_redirected_to haveto_list_path(assigns(:haveto_list))
  end

  test "should show haveto_list" do
    get :show, id: @haveto_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haveto_list
    assert_response :success
  end

  test "should update haveto_list" do
    patch :update, id: @haveto_list, haveto_list: { description: @haveto_list.description, title: @haveto_list.title }
    assert_redirected_to haveto_list_path(assigns(:haveto_list))
  end

  test "should destroy haveto_list" do
    assert_difference('HavetoList.count', -1) do
      delete :destroy, id: @haveto_list
    end

    assert_redirected_to haveto_lists_path
  end
end
