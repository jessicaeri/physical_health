class Workout < ApplicationRecord
  belongs_to :physical_health
  has_many :exercises, dependent: :destroy
end
