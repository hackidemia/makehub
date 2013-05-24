class CreateMaterialsStepsTable < ActiveRecord::Migration
  def change
    create_table :materials_steps do |t|
      t.integer :material_id, null: false
      t.integer :step_id,     null: false
    end
    add_index :materials_steps, [:material_id, :step_id], unique: true
    add_index :materials_steps, [:step_id, :material_id], unique: true
  end
end
