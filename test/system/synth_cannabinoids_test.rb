require "application_system_test_case"

class SynthCannabinoidsTest < ApplicationSystemTestCase
  setup do
    @synth_cannabinoid = synth_cannabinoids(:one)
  end

  test "visiting the index" do
    visit synth_cannabinoids_url
    assert_selector "h1", text: "Synth Cannabinoids"
  end

  test "creating a Synth cannabinoid" do
    visit synth_cannabinoids_url
    click_on "New Synth Cannabinoid"

    fill_in "Avatar", with: @synth_cannabinoid.avatar
    fill_in "Description", with: @synth_cannabinoid.description
    fill_in "Name", with: @synth_cannabinoid.name
    fill_in "Price", with: @synth_cannabinoid.price
    click_on "Create Synth cannabinoid"

    assert_text "Synth cannabinoid was successfully created"
    click_on "Back"
  end

  test "updating a Synth cannabinoid" do
    visit synth_cannabinoids_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @synth_cannabinoid.avatar
    fill_in "Description", with: @synth_cannabinoid.description
    fill_in "Name", with: @synth_cannabinoid.name
    fill_in "Price", with: @synth_cannabinoid.price
    click_on "Update Synth cannabinoid"

    assert_text "Synth cannabinoid was successfully updated"
    click_on "Back"
  end

  test "destroying a Synth cannabinoid" do
    visit synth_cannabinoids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Synth cannabinoid was successfully destroyed"
  end
end
