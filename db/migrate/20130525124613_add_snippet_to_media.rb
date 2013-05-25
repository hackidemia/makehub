class AddSnippetToMedia < ActiveRecord::Migration
  def change
    add_column :media, :snippet, :text
  end
end
