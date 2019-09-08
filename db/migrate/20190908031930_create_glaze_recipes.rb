class CreateGlazeRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :glaze_recipes do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
