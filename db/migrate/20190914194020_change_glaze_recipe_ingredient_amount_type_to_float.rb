class ChangeGlazeRecipeIngredientAmountTypeToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :glaze_recipe_ingredients, :amount, :float
  end
end
