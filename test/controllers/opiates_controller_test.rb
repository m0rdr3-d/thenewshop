require 'test_helper'

class OpiatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opiate = opiates(:one)
  end

  test "should get index" do
    get opiates_url
    assert_response :success
  end

  test "should get new" do
    get new_opiate_url
    assert_response :success
  end

  test "should create opiate" do
    assert_difference('Opiate.count') do
      post opiates_url, params: { opiate: { avatar: @opiate.avatar, description: @opiate.description, name: @opiate.name, price: @opiate.price } }
    end

    assert_redirected_to opiate_url(Opiate.last)
  end

  test "should show opiate" do
    get opiate_url(@opiate)
    assert_response :success
  end

  test "should get edit" do
    get edit_opiate_url(@opiate)
    assert_response :success
  end

  test "should update opiate" do
    patch opiate_url(@opiate), params: { opiate: { avatar: @opiate.avatar, description: @opiate.description, name: @opiate.name, price: @opiate.price } }
    assert_redirected_to opiate_url(@opiate)
  end

  test "should destroy opiate" do
    assert_difference('Opiate.count', -1) do
      delete opiate_url(@opiate)
    end

    assert_redirected_to opiates_url
  end
end
