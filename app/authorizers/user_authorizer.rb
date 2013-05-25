class UserAuthorizer < ApplicationAuthorizer
  # any user can create and read projects
  def self.readable_by?(user)
    true
  end
  def self.creatable_by?(user)
    user.new_record?
  end

  # users can only update and destroy their own accounts
  def updatable_by?(user)
    resource == user
  end
  def deletable_by?(user)
    resource == user
  end
end