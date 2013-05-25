class Step < ActiveRecord::Base
  belongs_to :project, inverse_of: :steps, touch: true
  # has_many :media # let's not touch media for the time being, we'll need to change the name anyways. it's better to have a name that works good with plural and singular.

  # with Authority we control permissions. (i.e. `creatable_by?(user)`)
  # Check out /app/authorizers or read https://github.com/nathanl/authority
  include Authority::Abilities

  validates_presence_of :project_id, :name, :content
end
