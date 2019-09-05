require "application_system_test_case"

class PotsTest < ApplicationSystemTestCase
  setup do
    @pot = pots(:one)
  end

  test "visiting the index" do
    visit pots_url
    assert_selector "h1", text: "Pots"
  end

  test "creating a Pot" do
    visit pots_url
    click_on "New Pot"

    check "Finished" if @pot.finished
    fill_in "Inventory status", with: @pot.inventory_status
    click_on "Create Pot"

    assert_text "Pot was successfully created"
    click_on "Back"
  end

  test "updating a Pot" do
    visit pots_url
    click_on "Edit", match: :first

    check "Finished" if @pot.finished
    fill_in "Inventory status", with: @pot.inventory_status
    click_on "Update Pot"

    assert_text "Pot was successfully updated"
    click_on "Back"
  end

  test "destroying a Pot" do
    visit pots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pot was successfully destroyed"
  end
end
