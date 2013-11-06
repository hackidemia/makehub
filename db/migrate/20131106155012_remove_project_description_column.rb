class RemoveProjectDescriptionColumn < ActiveRecord::Migration
  def self.up
    remove_column :projects, :description
  end
  
  def self.down
    add_column :projects, :description, :text
  end
end
