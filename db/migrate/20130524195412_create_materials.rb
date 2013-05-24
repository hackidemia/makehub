class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :url
      t.string :photo_url

      t.timestamps
    end
  end
end
