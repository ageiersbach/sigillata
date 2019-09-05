require "application_system_test_case"

class GlazeMaterialsTest < ApplicationSystemTestCase
  setup do
    @glaze_material = glaze_materials(:one)
  end

  test "visiting the index" do
    visit glaze_materials_url
    assert_selector "h1", text: "Glaze Materials"
  end

  test "creating a Glaze material" do
    visit glaze_materials_url
    click_on "New Glaze Material"

    fill_in "Name", with: @glaze_material.name
    click_on "Create Glaze material"

    assert_text "Glaze material was successfully created"
    click_on "Back"
  end

  test "updating a Glaze material" do
    visit glaze_materials_url
    click_on "Edit", match: :first

    fill_in "Name", with: @glaze_material.name
    click_on "Update Glaze material"

    assert_text "Glaze material was successfully updated"
    click_on "Back"
  end

  test "destroying a Glaze material" do
    visit glaze_materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Glaze material was successfully destroyed"
  end
end
