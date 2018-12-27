require 'test_helper'

class SynthCannabinoidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @synth_cannabinoid = synth_cannabinoids(:one)
  end

  test "should get index" do
    get synth_cannabinoids_url
    assert_response :success
  end

  test "should get new" do
    get new_synth_cannabinoid_url
    assert_response :success
  end

  test "should create synth_cannabinoid" do
    assert_difference('SynthCannabinoid.count') do
      post synth_cannabinoids_url, params: { synth_cannabinoid: { avatar: @synth_cannabinoid.avatar, description: @synth_cannabinoid.description, name: @synth_cannabinoid.name, price: @synth_cannabinoid.price } }
    end

    assert_redirected_to synth_cannabinoid_url(SynthCannabinoid.last)
  end

  test "should show synth_cannabinoid" do
    get synth_cannabinoid_url(@synth_cannabinoid)
    assert_response :success
  end

  test "should get edit" do
    get edit_synth_cannabinoid_url(@synth_cannabinoid)
    assert_response :success
  end

  test "should update synth_cannabinoid" do
    patch synth_cannabinoid_url(@synth_cannabinoid), params: { synth_cannabinoid: { avatar: @synth_cannabinoid.avatar, description: @synth_cannabinoid.description, name: @synth_cannabinoid.name, price: @synth_cannabinoid.price } }
    assert_redirected_to synth_cannabinoid_url(@synth_cannabinoid)
  end

  test "should destroy synth_cannabinoid" do
    assert_difference('SynthCannabinoid.count', -1) do
      delete synth_cannabinoid_url(@synth_cannabinoid)
    end

    assert_redirected_to synth_cannabinoids_url
  end
end
