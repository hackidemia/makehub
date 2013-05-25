class AddImageUrlToMedia < ActiveRecord::Migration
  def change
    add_column :media, :image_url, :string
  end
end
