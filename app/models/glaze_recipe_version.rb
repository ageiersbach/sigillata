class GlazeRecipeVersion < ApplicationRecord
  belongs_to :glaze_recipe
  has_many :glaze_recipe_ingredients, dependent: :destroy

  accepts_nested_attributes_for :glaze_recipe_ingredients
end
