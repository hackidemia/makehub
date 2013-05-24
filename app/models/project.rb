class Project < ActiveRecord::Base
  belongs_to :user, inverse_of: :projects, touch: true
  has_many :steps, inverse_of: :project, dependent: :destroy
end
