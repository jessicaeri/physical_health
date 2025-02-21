class ReferExerToWorkouts < ActiveRecord::Migration[8.0]
  def change
    add_column :exercises, :workout_id, :integer, null: false
    
  end
end
