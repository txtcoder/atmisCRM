require 'test_helper'

class TcmPatientInfosControllerTest < ActionController::TestCase
  setup do
    @tcm_patient_info = tcm_patient_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tcm_patient_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tcm_patient_info" do
    assert_difference('TcmPatientInfo.count') do
      post :create, tcm_patient_info: {  }
    end

    assert_redirected_to tcm_patient_info_path(assigns(:tcm_patient_info))
  end

  test "should show tcm_patient_info" do
    get :show, id: @tcm_patient_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tcm_patient_info
    assert_response :success
  end

  test "should update tcm_patient_info" do
    patch :update, id: @tcm_patient_info, tcm_patient_info: {  }
    assert_redirected_to tcm_patient_info_path(assigns(:tcm_patient_info))
  end

  test "should destroy tcm_patient_info" do
    assert_difference('TcmPatientInfo.count', -1) do
      delete :destroy, id: @tcm_patient_info
    end

    assert_redirected_to tcm_patient_infos_path
  end
end
