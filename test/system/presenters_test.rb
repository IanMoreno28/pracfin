require "application_system_test_case"

class PresentersTest < ApplicationSystemTestCase
  setup do
    @presenter = presenters(:one)
  end

  test "visiting the index" do
    visit presenters_url
    assert_selector "h1", text: "Presenters"
  end

  test "creating a Presenter" do
    visit presenters_url
    click_on "New Presenter"

    fill_in "Age", with: @presenter.age
    fill_in "First name", with: @presenter.first_name
    fill_in "Gender", with: @presenter.gender
    fill_in "Last name", with: @presenter.last_name
    click_on "Create Presenter"

    assert_text "Presenter was successfully created"
    click_on "Back"
  end

  test "updating a Presenter" do
    visit presenters_url
    click_on "Edit", match: :first

    fill_in "Age", with: @presenter.age
    fill_in "First name", with: @presenter.first_name
    fill_in "Gender", with: @presenter.gender
    fill_in "Last name", with: @presenter.last_name
    click_on "Update Presenter"

    assert_text "Presenter was successfully updated"
    click_on "Back"
  end

  test "destroying a Presenter" do
    visit presenters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presenter was successfully destroyed"
  end
end
