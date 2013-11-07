class AddSkillsPriceDurationAndLicenceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :skills, :string
    add_column :projects, :price, :string
    add_column :projects, :duration, :string
    add_column :projects, :license, :string
  end
end
