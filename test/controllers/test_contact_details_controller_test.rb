require 'test_helper'

class TestContactDetailsControllerTest < ActionController::TestCase
  setup do
    @test_contact_detail = test_contact_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_contact_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_contact_detail" do
    assert_difference('TestContactDetail.count') do
      post :create, test_contact_detail: { age: @test_contact_detail.age }
    end

    assert_redirected_to test_contact_detail_path(assigns(:test_contact_detail))
  end

  test "should show test_contact_detail" do
    get :show, id: @test_contact_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_contact_detail
    assert_response :success
  end

  test "should update test_contact_detail" do
    patch :update, id: @test_contact_detail, test_contact_detail: { age: @test_contact_detail.age }
    assert_redirected_to test_contact_detail_path(assigns(:test_contact_detail))
  end

  test "should destroy test_contact_detail" do
    assert_difference('TestContactDetail.count', -1) do
      delete :destroy, id: @test_contact_detail
    end

    assert_redirected_to test_contact_details_path
  end
end
