class PhysicalHealth < ApplicationRecord
  has_many :workouts, dependent: :destroy
end
