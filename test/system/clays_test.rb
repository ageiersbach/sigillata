require "application_system_test_case"

class ClaysTest < ApplicationSystemTestCase
  setup do
    @clay = clays(:one)
  end

  test "visiting the index" do
    visit clays_url
    assert_selector "h1", text: "Clays"
  end

  test "creating a Clay" do
    visit clays_url
    click_on "New Clay"

    fill_in "Cone", with: @clay.cone
    fill_in "Name", with: @clay.name
    click_on "Create Clay"

    assert_text "Clay was successfully created"
    click_on "Back"
  end

  test "updating a Clay" do
    visit clays_url
    click_on "Edit", match: :first

    fill_in "Cone", with: @clay.cone
    fill_in "Name", with: @clay.name
    click_on "Update Clay"

    assert_text "Clay was successfully updated"
    click_on "Back"
  end

  test "destroying a Clay" do
    visit clays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clay was successfully destroyed"
  end
end
