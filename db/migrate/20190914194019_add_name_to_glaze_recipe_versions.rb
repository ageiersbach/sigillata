class AddNameToGlazeRecipeVersions < ActiveRecord::Migration[6.0]
  def change
    add_column :glaze_recipe_versions, :name, :string
  end
end
