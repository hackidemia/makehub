class Step < ActiveRecord::Base
  belongs_to :project, inverse_of: :steps, touch: true
  has_many :media_objects, inverse_of: :step

  accepts_nested_attributes_for :media_objects

  # with Authority we control permissions. (i.e. `creatable_by?(user)`)
  # Check out /app/authorizers or read https://github.com/nathanl/authority
  include Authority::Abilities

  validates_presence_of :project_id, :name, :content
end
