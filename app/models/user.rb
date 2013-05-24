class User < ActiveRecord::Base
  has_many: :projects
  def self.find_or_create_from_omniauth(data)
    user = where(provider: data["provider"], uid: data["uid"]).first_or_initialize
    user.name  = data["info"]["name"] if data["info"]["name"]
    user.email = data["info"]["email"] if data["info"]["email"]
    user.save
    user
  end
end
