class RemoveExtraColumnsFromMediaObject < ActiveRecord::Migration
  def self.up
    remove_column :media_objects, :url
    remove_column :media_objects, :snippet
    remove_column :media_objects, :image_url
  end
  def self.down
    add_column :media_objects, :url, :string
    add_column :media_objects, :snippet, :string
    add_column :media_objects, :image_url, :string
  end
end
