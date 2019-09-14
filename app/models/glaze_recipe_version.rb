class GlazeRecipeVersion < ApplicationRecord
  belongs_to :glaze_recipe
  has_many :glaze_recipe_ingredients, dependent: :destroy

  validates :name, uniqueness: { scope: :glaze_recipe }

  accepts_nested_attributes_for :glaze_recipe_ingredients
end
