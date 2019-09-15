require 'test_helper'

class GlazeRecipeIngredientTest < ActiveSupport::TestCase
  test "valid model" do
    gri = GlazeRecipeIngredient.new(
      amount: 20,
      glaze_recipe_version: glaze_recipe_versions(:one),
      glaze_material: glaze_materials(:one)
    )
    assert gri.valid?
  end

  test "validates numericality of amount" do
    gri = glaze_recipe_ingredients(:one)
    gri.amount = 101

    refute gri.valid?
    assert gri.errors[:amount].include?("must be less than or equal to 100")

    gri.amount = -20
    refute gri.valid?
    assert gri.errors[:amount].include?("must be greater than or equal to 0")

    gri.amount = 0
    assert gri.valid?
  end
end
