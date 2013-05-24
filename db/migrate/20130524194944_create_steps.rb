class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.text :content
      t.integer :project_id

      t.timestamps
    end
  end
end
