require "application_system_test_case"

class OpiatesTest < ApplicationSystemTestCase
  setup do
    @opiate = opiates(:one)
  end

  test "visiting the index" do
    visit opiates_url
    assert_selector "h1", text: "Opiates"
  end

  test "creating a Opiate" do
    visit opiates_url
    click_on "New Opiate"

    fill_in "Avatar", with: @opiate.avatar
    fill_in "Description", with: @opiate.description
    fill_in "Name", with: @opiate.name
    fill_in "Price", with: @opiate.price
    click_on "Create Opiate"

    assert_text "Opiate was successfully created"
    click_on "Back"
  end

  test "updating a Opiate" do
    visit opiates_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @opiate.avatar
    fill_in "Description", with: @opiate.description
    fill_in "Name", with: @opiate.name
    fill_in "Price", with: @opiate.price
    click_on "Update Opiate"

    assert_text "Opiate was successfully updated"
    click_on "Back"
  end

  test "destroying a Opiate" do
    visit opiates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Opiate was successfully destroyed"
  end
end
