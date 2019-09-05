class CreateGlazeMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :glaze_materials do |t|
      t.string :name

      t.timestamps
    end
  end
end
