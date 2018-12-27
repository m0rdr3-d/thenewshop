require "application_system_test_case"

class CocainesTest < ApplicationSystemTestCase
  setup do
    @cocaine = cocaines(:one)
  end

  test "visiting the index" do
    visit cocaines_url
    assert_selector "h1", text: "Cocaines"
  end

  test "creating a Cocaine" do
    visit cocaines_url
    click_on "New Cocaine"

    fill_in "Avatar", with: @cocaine.avatar
    fill_in "Description", with: @cocaine.description
    fill_in "Name", with: @cocaine.name
    fill_in "Price", with: @cocaine.price
    click_on "Create Cocaine"

    assert_text "Cocaine was successfully created"
    click_on "Back"
  end

  test "updating a Cocaine" do
    visit cocaines_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @cocaine.avatar
    fill_in "Description", with: @cocaine.description
    fill_in "Name", with: @cocaine.name
    fill_in "Price", with: @cocaine.price
    click_on "Update Cocaine"

    assert_text "Cocaine was successfully updated"
    click_on "Back"
  end

  test "destroying a Cocaine" do
    visit cocaines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cocaine was successfully destroyed"
  end
end
