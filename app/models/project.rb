class Project < ActiveRecord::Base
  belongs_to :user, inverse_of: :projects, touch: true
  has_many :steps, inverse_of: :project, dependent: :destroy
  has_and_belongs_to_many :materials

  # with Authority we control permissions. (i.e. `creatable_by?(user)`)
  # Check out /app/authorizers or read https://github.com/nathanl/authority
  include Authority::Abilities

  validates_presence_of :name, :user_id
end
