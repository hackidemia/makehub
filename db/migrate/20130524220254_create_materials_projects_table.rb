class CreateMaterialsProjectsTable < ActiveRecord::Migration
  def change
    create_table :materials_projects do |t|
      t.integer :material_id, null: false
      t.integer :project_id,     null: false
    end
    add_index :materials_projects, [:material_id, :project_id], unique: true
    add_index :materials_projects, [:project_id, :material_id], unique: true
  end
end
