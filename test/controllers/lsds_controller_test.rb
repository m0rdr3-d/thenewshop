require 'test_helper'

class LsdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lsd = lsds(:one)
  end

  test "should get index" do
    get lsds_url
    assert_response :success
  end

  test "should get new" do
    get new_lsd_url
    assert_response :success
  end

  test "should create lsd" do
    assert_difference('Lsd.count') do
      post lsds_url, params: { lsd: { avatar: @lsd.avatar, description: @lsd.description, name: @lsd.name, price: @lsd.price } }
    end

    assert_redirected_to lsd_url(Lsd.last)
  end

  test "should show lsd" do
    get lsd_url(@lsd)
    assert_response :success
  end

  test "should get edit" do
    get edit_lsd_url(@lsd)
    assert_response :success
  end

  test "should update lsd" do
    patch lsd_url(@lsd), params: { lsd: { avatar: @lsd.avatar, description: @lsd.description, name: @lsd.name, price: @lsd.price } }
    assert_redirected_to lsd_url(@lsd)
  end

  test "should destroy lsd" do
    assert_difference('Lsd.count', -1) do
      delete lsd_url(@lsd)
    end

    assert_redirected_to lsds_url
  end
end
