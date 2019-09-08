class GlazeRecipeIngredient < ApplicationRecord
  belongs_to :glaze_material
  belongs_to :glaze_recipe_version
end
