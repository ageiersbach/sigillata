require "application_system_test_case"

class GlazeRecipesTest < ApplicationSystemTestCase
  setup do
    @glaze_recipe = glaze_recipes(:one)
  end

  test "visiting the index" do
    visit glaze_recipes_url
    assert_selector "h1", text: "Glaze Recipes"
  end

  test "creating a Glaze recipe" do
    visit glaze_recipes_url
    click_on "New Glaze Recipe"

    fill_in "Abbreviation", with: @glaze_recipe.abbreviation
    fill_in "Name", with: @glaze_recipe.name
    click_on "Create Glaze recipe"

    assert_text "Glaze recipe was successfully created"
    click_on "Back"
  end

  test "updating a Glaze recipe" do
    visit glaze_recipes_url
    click_on "Edit", match: :first

    fill_in "Abbreviation", with: @glaze_recipe.abbreviation
    fill_in "Name", with: @glaze_recipe.name
    click_on "Update Glaze recipe"

    assert_text "Glaze recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Glaze recipe" do
    visit glaze_recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Glaze recipe was successfully destroyed"
  end
end
