class StepAuthorizer < ApplicationAuthorizer

  # any user can create and read projects
  def self.readable_by?(user)
    true
  end
  
  # users can only manage steps for their own projects
  def creatable_by?(user)
    resource.project.updatable_by?(user)
  end
  def updatable_by?(user)
    resource.project.updatable_by?(user)
  end
  def deletable_by?(user)
    resource.project.updatable_by?(user)
  end
end