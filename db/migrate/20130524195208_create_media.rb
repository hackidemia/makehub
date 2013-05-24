class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :url
      t.integer :step_id

      t.timestamps
    end
  end
end
