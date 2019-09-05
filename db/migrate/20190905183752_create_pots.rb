class CreatePots < ActiveRecord::Migration[6.0]
  def change
    create_table :pots do |t|
      t.boolean :finished
      t.integer :inventory_status

      t.timestamps
    end
  end
end
