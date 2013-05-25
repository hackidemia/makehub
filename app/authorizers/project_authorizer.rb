class ProjectAuthorizer < ApplicationAuthorizer

  # any user can create and read projects
  def self.readable_by?(user)
    true
  end
  def self.creatable_by?(user)
    not user.new_record?
  end

  # users can only update and destroy their own projects
  def updatable_by?(user)
    resource.user_id == user.id
  end
  def deletable_by?(user)
    resource.user_id == user.id
  end
end