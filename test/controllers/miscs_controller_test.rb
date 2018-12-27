require 'test_helper'

class MiscsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @misc = miscs(:one)
  end

  test "should get index" do
    get miscs_url
    assert_response :success
  end

  test "should get new" do
    get new_misc_url
    assert_response :success
  end

  test "should create misc" do
    assert_difference('Misc.count') do
      post miscs_url, params: { misc: { avatar: @misc.avatar, description: @misc.description, name: @misc.name, price: @misc.price } }
    end

    assert_redirected_to misc_url(Misc.last)
  end

  test "should show misc" do
    get misc_url(@misc)
    assert_response :success
  end

  test "should get edit" do
    get edit_misc_url(@misc)
    assert_response :success
  end

  test "should update misc" do
    patch misc_url(@misc), params: { misc: { avatar: @misc.avatar, description: @misc.description, name: @misc.name, price: @misc.price } }
    assert_redirected_to misc_url(@misc)
  end

  test "should destroy misc" do
    assert_difference('Misc.count', -1) do
      delete misc_url(@misc)
    end

    assert_redirected_to miscs_url
  end
end
