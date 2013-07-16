class AddParentToProject < ActiveRecord::Migration
  def change
    add_column :projects, :parent_id, :integer
  end
end
