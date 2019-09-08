class GlazeRecipeVersion < ApplicationRecord
  belongs_to :glaze_recipe
  has_many :glaze_recipe_ingredients, dependent: :destroy
end
