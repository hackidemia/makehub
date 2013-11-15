class Step < ActiveRecord::Base
  belongs_to :project, inverse_of: :steps, touch: true
  has_many :media_objects, inverse_of: :step

  accepts_nested_attributes_for :media_objects

  before_validation(on: :create) do
    self.position = self.project.number_of_steps
  end

  # with Authority we control permissions. (i.e. `creatable_by?(user)`)
  # Check out /app/authorizers or read https://github.com/nathanl/authority
  include Authority::Abilities

  validates_presence_of :project_id, :name, :content, :position
  validates :position, numericality: { only_integer: true },
                       uniqueness: { scope: :project_id }

  def fork(project_id)
    new_step = self.dup
    new_step.project_id = project_id
    new_step.save

    self.media_objects.to_a.map { |mo| mo.fork(new_step.id) }
  end
end
