class CreateGlazeRecipeVersions < ActiveRecord::Migration[6.0]
  def change
    create_table :glaze_recipe_versions do |t|
      t.references :glaze_recipe, null: false, foreign_key: true
      t.float :specific_gravity
      t.text :notes

      t.timestamps
    end
  end
end
