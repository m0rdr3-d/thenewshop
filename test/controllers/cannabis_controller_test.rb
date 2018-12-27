require 'test_helper'

class CannabisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cannabi = cannabis(:one)
  end

  test "should get index" do
    get cannabis_url
    assert_response :success
  end

  test "should get new" do
    get new_cannabi_url
    assert_response :success
  end

  test "should create cannabi" do
    assert_difference('Cannabi.count') do
      post cannabis_url, params: { cannabi: { avatar: @cannabi.avatar, description: @cannabi.description, name: @cannabi.name, price: @cannabi.price } }
    end

    assert_redirected_to cannabi_url(Cannabi.last)
  end

  test "should show cannabi" do
    get cannabi_url(@cannabi)
    assert_response :success
  end

  test "should get edit" do
    get edit_cannabi_url(@cannabi)
    assert_response :success
  end

  test "should update cannabi" do
    patch cannabi_url(@cannabi), params: { cannabi: { avatar: @cannabi.avatar, description: @cannabi.description, name: @cannabi.name, price: @cannabi.price } }
    assert_redirected_to cannabi_url(@cannabi)
  end

  test "should destroy cannabi" do
    assert_difference('Cannabi.count', -1) do
      delete cannabi_url(@cannabi)
    end

    assert_redirected_to cannabis_url
  end
end
