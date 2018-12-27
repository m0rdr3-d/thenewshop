require 'test_helper'

class CocainesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cocaine = cocaines(:one)
  end

  test "should get index" do
    get cocaines_url
    assert_response :success
  end

  test "should get new" do
    get new_cocaine_url
    assert_response :success
  end

  test "should create cocaine" do
    assert_difference('Cocaine.count') do
      post cocaines_url, params: { cocaine: { avatar: @cocaine.avatar, description: @cocaine.description, name: @cocaine.name, price: @cocaine.price } }
    end

    assert_redirected_to cocaine_url(Cocaine.last)
  end

  test "should show cocaine" do
    get cocaine_url(@cocaine)
    assert_response :success
  end

  test "should get edit" do
    get edit_cocaine_url(@cocaine)
    assert_response :success
  end

  test "should update cocaine" do
    patch cocaine_url(@cocaine), params: { cocaine: { avatar: @cocaine.avatar, description: @cocaine.description, name: @cocaine.name, price: @cocaine.price } }
    assert_redirected_to cocaine_url(@cocaine)
  end

  test "should destroy cocaine" do
    assert_difference('Cocaine.count', -1) do
      delete cocaine_url(@cocaine)
    end

    assert_redirected_to cocaines_url
  end
end
