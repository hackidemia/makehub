class Project < ActiveRecord::Base
  belongs_to :user, inverse_of: :projects, touch: true
  belongs_to :parent, :class_name => 'Project'
  has_many :steps, inverse_of: :project, dependent: :destroy
  has_and_belongs_to_many :materials

  # with Authority we control permissions. (i.e. `creatable_by?(user)`)
  # Check out /app/authorizers or read https://github.com/nathanl/authority
  include Authority::Abilities

  validates_presence_of :name, :user_id
  validates_inclusion_of :duration, in: APPCONFIG['project']['duration'], allow_blank: true
  validates :license, inclusion: { in: APPCONFIG['project']['licenses'] }, allow_blank: true
  validates :price, inclusion: { in: APPCONFIG['project']['price'] }, allow_blank: true
  validate do
    return unless self.skills
    skills_array = self.skills.split
    skills_array.each do |skill|
      errors.add(:base, "#{skill} is not a valid skill") unless APPCONFIG['project']['skills'].include? skill
    end
  end

  def fork(new_user_id)
    # so we can pass a User object
    new_user_id = new_user_id.id if new_user_id.respond_to?(:id)

    new_project = self.dup
    new_project.user_id      = new_user_id
    new_project.material_ids = material_ids
    new_project.parent = self
    new_project.save

    new_steps = steps.to_a.map(&:dup).each do |step|
      step.project_id = new_project.id
      step.save
    end

    new_project
  end
end
