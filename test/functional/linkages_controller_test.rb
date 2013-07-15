require 'test_helper'

class LinkagesControllerTest < ActionController::TestCase
  setup do
    @linkage = linkages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:linkages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create linkage" do
    assert_difference('Linkage.count') do
      post :create, linkage: { description: @linkage.description, link: @linkage.link }
    end

    assert_redirected_to linkage_path(assigns(:linkage))
  end

  test "should show linkage" do
    get :show, id: @linkage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @linkage
    assert_response :success
  end

  test "should update linkage" do
    put :update, id: @linkage, linkage: { description: @linkage.description, link: @linkage.link }
    assert_redirected_to linkage_path(assigns(:linkage))
  end

  test "should destroy linkage" do
    assert_difference('Linkage.count', -1) do
      delete :destroy, id: @linkage
    end

    assert_redirected_to linkages_path
  end
end
