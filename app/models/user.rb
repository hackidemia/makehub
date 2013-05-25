class User < ActiveRecord::Base
  has_many :projects, inverse_of: :user, dependent: :destroy

  validates_presence_of :provider, :uid, :email, :name

  # with Authority we control permissions. (i.e. `creatable_by?(user)`)
  # Check out /app/authorizers or read https://github.com/nathanl/authority
  include Authority::UserAbilities
  include Authority::Abilities

  def self.find_or_create_from_omniauth(data)
    user = where(provider: data["provider"], uid: data["uid"]).first_or_initialize
    user.name  = data["info"]["name"] if data["info"]["name"]
    user.email = data["info"]["email"] if data["info"]["email"]
    user.save
    user
  end
end
