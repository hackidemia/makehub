class Step < ActiveRecord::Base
  belongs_to :project, inverse_of: :steps, touch: true
  # has_many :media # let's not touch media for the time being, we'll need to change the name anyways. it's better to have a name that works good with plural and singular.
  has_and_belongs_to_many :materials
end
