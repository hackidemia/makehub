class RenameMediaToMediaObjects < ActiveRecord::Migration
  def up
    rename_table :media, :media_objects
  end

  def down
    rename_table :media_objects, :media
  end
end
