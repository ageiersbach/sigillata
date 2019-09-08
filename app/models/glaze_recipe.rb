class GlazeRecipe < ApplicationRecord
  has_many :glaze_recipe_versions, dependent: :destroy
end
