require 'test_helper'

class TenantOfsControllerTest < ActionController::TestCase
  setup do
    @tenant_of = tenant_ofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenant_ofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenant_of" do
    assert_difference('TenantOf.count') do
      post :create, tenant_of: {  }
    end

    assert_redirected_to tenant_of_path(assigns(:tenant_of))
  end

  test "should show tenant_of" do
    get :show, id: @tenant_of
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tenant_of
    assert_response :success
  end

  test "should update tenant_of" do
    patch :update, id: @tenant_of, tenant_of: {  }
    assert_redirected_to tenant_of_path(assigns(:tenant_of))
  end

  test "should destroy tenant_of" do
    assert_difference('TenantOf.count', -1) do
      delete :destroy, id: @tenant_of
    end

    assert_redirected_to tenant_ofs_path
  end
end
