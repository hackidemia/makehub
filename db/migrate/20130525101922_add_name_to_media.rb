class AddNameToMedia < ActiveRecord::Migration
  def change
    add_column :media, :name, :string
  end
end
