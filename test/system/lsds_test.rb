require "application_system_test_case"

class LsdsTest < ApplicationSystemTestCase
  setup do
    @lsd = lsds(:one)
  end

  test "visiting the index" do
    visit lsds_url
    assert_selector "h1", text: "Lsds"
  end

  test "creating a Lsd" do
    visit lsds_url
    click_on "New Lsd"

    fill_in "Avatar", with: @lsd.avatar
    fill_in "Description", with: @lsd.description
    fill_in "Name", with: @lsd.name
    fill_in "Price", with: @lsd.price
    click_on "Create Lsd"

    assert_text "Lsd was successfully created"
    click_on "Back"
  end

  test "updating a Lsd" do
    visit lsds_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @lsd.avatar
    fill_in "Description", with: @lsd.description
    fill_in "Name", with: @lsd.name
    fill_in "Price", with: @lsd.price
    click_on "Update Lsd"

    assert_text "Lsd was successfully updated"
    click_on "Back"
  end

  test "destroying a Lsd" do
    visit lsds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lsd was successfully destroyed"
  end
end
