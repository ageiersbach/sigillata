class CreateClays < ActiveRecord::Migration[6.0]
  def change
    create_table :clays do |t|
      t.string :name
      t.string :cone

      t.timestamps
    end
  end
end
