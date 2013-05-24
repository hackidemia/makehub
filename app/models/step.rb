class Step < ActiveRecord::Base
  belongs_to: :project
  has_many: :media
end
