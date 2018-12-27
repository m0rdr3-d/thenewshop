require "application_system_test_case"

class CannabisTest < ApplicationSystemTestCase
  setup do
    @cannabi = cannabis(:one)
  end

  test "visiting the index" do
    visit cannabis_url
    assert_selector "h1", text: "Cannabis"
  end

  test "creating a Cannabi" do
    visit cannabis_url
    click_on "New Cannabi"

    fill_in "Avatar", with: @cannabi.avatar
    fill_in "Description", with: @cannabi.description
    fill_in "Name", with: @cannabi.name
    fill_in "Price", with: @cannabi.price
    click_on "Create Cannabi"

    assert_text "Cannabi was successfully created"
    click_on "Back"
  end

  test "updating a Cannabi" do
    visit cannabis_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @cannabi.avatar
    fill_in "Description", with: @cannabi.description
    fill_in "Name", with: @cannabi.name
    fill_in "Price", with: @cannabi.price
    click_on "Update Cannabi"

    assert_text "Cannabi was successfully updated"
    click_on "Back"
  end

  test "destroying a Cannabi" do
    visit cannabis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cannabi was successfully destroyed"
  end
end
