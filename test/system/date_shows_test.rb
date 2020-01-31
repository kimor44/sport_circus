require "application_system_test_case"

class DateShowsTest < ApplicationSystemTestCase
  setup do
    @date_show = date_shows(:one)
  end

  test "visiting the index" do
    visit date_shows_url
    assert_selector "h1", text: "Date Shows"
  end

  test "creating a Date show" do
    visit date_shows_url
    click_on "New Date Show"

    fill_in "Date", with: @date_show.date
    click_on "Create Date show"

    assert_text "Date show was successfully created"
    click_on "Back"
  end

  test "updating a Date show" do
    visit date_shows_url
    click_on "Edit", match: :first

    fill_in "Date", with: @date_show.date
    click_on "Update Date show"

    assert_text "Date show was successfully updated"
    click_on "Back"
  end

  test "destroying a Date show" do
    visit date_shows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date show was successfully destroyed"
  end
end
