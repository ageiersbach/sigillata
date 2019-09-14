require 'test_helper'

class GlazeRecipeVersionTest < ActiveSupport::TestCase
  test "a valid model" do
    recipe = glaze_recipes(:one)
    version = recipe.glaze_recipe_versions.new
    assert version.valid?
  end

  test "validates uniqueness of name to glaze recipe" do
    recipe = glaze_recipes(:one)
    version = recipe.glaze_recipe_versions.new(name: 'First')
    refute version.valid?

    version.glaze_recipe = glaze_recipes(:two)
    assert version.valid?
  end
end
