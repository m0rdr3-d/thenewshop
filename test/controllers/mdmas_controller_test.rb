require 'test_helper'

class MdmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mdma = mdmas(:one)
  end

  test "should get index" do
    get mdmas_url
    assert_response :success
  end

  test "should get new" do
    get new_mdma_url
    assert_response :success
  end

  test "should create mdma" do
    assert_difference('Mdma.count') do
      post mdmas_url, params: { mdma: { avatar: @mdma.avatar, description: @mdma.description, name: @mdma.name, price: @mdma.price } }
    end

    assert_redirected_to mdma_url(Mdma.last)
  end

  test "should show mdma" do
    get mdma_url(@mdma)
    assert_response :success
  end

  test "should get edit" do
    get edit_mdma_url(@mdma)
    assert_response :success
  end

  test "should update mdma" do
    patch mdma_url(@mdma), params: { mdma: { avatar: @mdma.avatar, description: @mdma.description, name: @mdma.name, price: @mdma.price } }
    assert_redirected_to mdma_url(@mdma)
  end

  test "should destroy mdma" do
    assert_difference('Mdma.count', -1) do
      delete mdma_url(@mdma)
    end

    assert_redirected_to mdmas_url
  end
end
