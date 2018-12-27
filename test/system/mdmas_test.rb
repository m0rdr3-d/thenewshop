require "application_system_test_case"

class MdmasTest < ApplicationSystemTestCase
  setup do
    @mdma = mdmas(:one)
  end

  test "visiting the index" do
    visit mdmas_url
    assert_selector "h1", text: "Mdmas"
  end

  test "creating a Mdma" do
    visit mdmas_url
    click_on "New Mdma"

    fill_in "Avatar", with: @mdma.avatar
    fill_in "Description", with: @mdma.description
    fill_in "Name", with: @mdma.name
    fill_in "Price", with: @mdma.price
    click_on "Create Mdma"

    assert_text "Mdma was successfully created"
    click_on "Back"
  end

  test "updating a Mdma" do
    visit mdmas_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @mdma.avatar
    fill_in "Description", with: @mdma.description
    fill_in "Name", with: @mdma.name
    fill_in "Price", with: @mdma.price
    click_on "Update Mdma"

    assert_text "Mdma was successfully updated"
    click_on "Back"
  end

  test "destroying a Mdma" do
    visit mdmas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mdma was successfully destroyed"
  end
end
