class ReferWorkoutToPhysHealth < ActiveRecord::Migration[8.0]
  def change
    add_column :workouts, :physical_health_id, :integer, null: false
    
  end
end
