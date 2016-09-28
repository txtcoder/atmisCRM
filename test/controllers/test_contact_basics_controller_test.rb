require 'test_helper'

class TestContactBasicsControllerTest < ActionController::TestCase
  setup do
    @test_contact_basic = test_contact_basics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_contact_basics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_contact_basic" do
    assert_difference('TestContactBasic.count') do
      post :create, test_contact_basic: { name: @test_contact_basic.name }
    end

    assert_redirected_to test_contact_basic_path(assigns(:test_contact_basic))
  end

  test "should show test_contact_basic" do
    get :show, id: @test_contact_basic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_contact_basic
    assert_response :success
  end

  test "should update test_contact_basic" do
    patch :update, id: @test_contact_basic, test_contact_basic: { name: @test_contact_basic.name }
    assert_redirected_to test_contact_basic_path(assigns(:test_contact_basic))
  end

  test "should destroy test_contact_basic" do
    assert_difference('TestContactBasic.count', -1) do
      delete :destroy, id: @test_contact_basic
    end

    assert_redirected_to test_contact_basics_path
  end
end
