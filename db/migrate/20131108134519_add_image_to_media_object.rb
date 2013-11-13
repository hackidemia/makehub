class AddImageToMediaObject < ActiveRecord::Migration
  def self.up
    add_attachment :media_objects, :image
  end

  def self.down
    remove_attachment :media_objects, :image
  end
end
