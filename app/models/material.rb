class Material < ActiveRecord::Base
  has_and_belongs_to_many :projects

  validates_presence_of :name

  # for the time being, any user can create, edit and destroy any material.
  # eventually we will have either admins or users that own materials
  # we need to find a way that makes sense, so projects can share materials.
end
