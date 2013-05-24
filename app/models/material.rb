class Material < ActiveRecord::Base
  has_and_belongs_to_many :steps
end
