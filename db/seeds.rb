# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Workout.create(name: "Weight Training")

# Exercise.create(name: "Pull Ups",sets:3, reps: 8, workout_id: 1)
# Exercise.create(name: "Squats",sets:3, reps: 10, workout_id: 1)
# Exercise.create(name: "Deadlifts",sets:3, reps: 10, workout_id: 1)
# Exercise.create(name: "Bicep Curls",sets:3, reps: 12, workout_id: 1)
# Exercise.create(name: "Tricep Pull Downs",sets:3, reps: 12, workout_id: 1)

require 'faker'
PhysicalHealth.create!(types: "Jess")
Workout.create!(name: "Weight Training", physical_health_id: 1)

10.times do 
  Exercise.create!(name: Faker::Sport.sport, sets: Faker::Number.between(from: 1, to: 5), reps: Faker::Number.between(from: 1, to: 15), workout_id: 1)
  
end

puts "#{Exercise.count} exercises created."