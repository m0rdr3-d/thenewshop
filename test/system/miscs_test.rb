require "application_system_test_case"

class MiscsTest < ApplicationSystemTestCase
  setup do
    @misc = miscs(:one)
  end

  test "visiting the index" do
    visit miscs_url
    assert_selector "h1", text: "Miscs"
  end

  test "creating a Misc" do
    visit miscs_url
    click_on "New Misc"

    fill_in "Avatar", with: @misc.avatar
    fill_in "Description", with: @misc.description
    fill_in "Name", with: @misc.name
    fill_in "Price", with: @misc.price
    click_on "Create Misc"

    assert_text "Misc was successfully created"
    click_on "Back"
  end

  test "updating a Misc" do
    visit miscs_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @misc.avatar
    fill_in "Description", with: @misc.description
    fill_in "Name", with: @misc.name
    fill_in "Price", with: @misc.price
    click_on "Update Misc"

    assert_text "Misc was successfully updated"
    click_on "Back"
  end

  test "destroying a Misc" do
    visit miscs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Misc was successfully destroyed"
  end
end
