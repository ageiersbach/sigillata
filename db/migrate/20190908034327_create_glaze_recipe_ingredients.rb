class CreateGlazeRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :glaze_recipe_ingredients do |t|
      t.references :glaze_material, null: false, foreign_key: true
      t.references :glaze_recipe_version, null: false, foreign_key: true
      t.integer :amount
      t.boolean :additive

      t.timestamps
    end
  end
end
