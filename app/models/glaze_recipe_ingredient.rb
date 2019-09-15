class GlazeRecipeIngredient < ApplicationRecord
  belongs_to :glaze_material
  belongs_to :glaze_recipe_version

  validates :amount, numericality: { less_than_or_equal_to: 100, greater_than_or_equal_to: 0 }
end
