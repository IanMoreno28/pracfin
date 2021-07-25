require "application_system_test_case"

class ClothingsTest < ApplicationSystemTestCase
  setup do
    @clothing = clothings(:one)
  end

  test "visiting the index" do
    visit clothings_url
    assert_selector "h1", text: "Clothings"
  end

  test "creating a Clothing" do
    visit clothings_url
    click_on "New Clothing"

    fill_in "Garment", with: @clothing.garment_id
    fill_in "Presenter", with: @clothing.presenter_id
    fill_in "Transmission", with: @clothing.transmission_id
    click_on "Create Clothing"

    assert_text "Clothing was successfully created"
    click_on "Back"
  end

  test "updating a Clothing" do
    visit clothings_url
    click_on "Edit", match: :first

    fill_in "Garment", with: @clothing.garment_id
    fill_in "Presenter", with: @clothing.presenter_id
    fill_in "Transmission", with: @clothing.transmission_id
    click_on "Update Clothing"

    assert_text "Clothing was successfully updated"
    click_on "Back"
  end

  test "destroying a Clothing" do
    visit clothings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clothing was successfully destroyed"
  end
end
