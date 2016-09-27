require 'test_helper'

class TcmBasicContactsControllerTest < ActionController::TestCase
  setup do
    @tcm_basic_contact = tcm_basic_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tcm_basic_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tcm_basic_contact" do
    assert_difference('TcmBasicContact.count') do
      post :create, tcm_basic_contact: {  }
    end

    assert_redirected_to tcm_basic_contact_path(assigns(:tcm_basic_contact))
  end

  test "should show tcm_basic_contact" do
    get :show, id: @tcm_basic_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tcm_basic_contact
    assert_response :success
  end

  test "should update tcm_basic_contact" do
    patch :update, id: @tcm_basic_contact, tcm_basic_contact: {  }
    assert_redirected_to tcm_basic_contact_path(assigns(:tcm_basic_contact))
  end

  test "should destroy tcm_basic_contact" do
    assert_difference('TcmBasicContact.count', -1) do
      delete :destroy, id: @tcm_basic_contact
    end

    assert_redirected_to tcm_basic_contacts_path
  end
end
