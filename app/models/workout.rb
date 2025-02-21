class Workout < ApplicationRecord
  belongs_to :physicalHealth
  has_many :exercises
end
