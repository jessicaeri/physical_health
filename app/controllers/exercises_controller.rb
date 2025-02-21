class ExercisesController < ApplicationController
  def index
    exercises = Exercise.all # model.all
    render json: exercises
  end

  def show
    exercise = Exercise.find(params[:id])
    puts params[:id]
    render json: exercise
  end

  def create
    exercise = Exercise.create(
      name: params[:name],
      #add weight(lbs)
      sets: params[:sets],
      reps: params[:reps] #target reps
      )
    render json: exercise
  end

  def update
    exercise = Exercise.find(params[:id])
    exercise.update(
      name: params[:name] || exercise.name,
      sets: params[:sets] || exercise.sets,
      reps: params[:reps] || exercise.reps
    )
    render json: exercise
  end

  def destroy
    exercise = Exercise.find(params[:id])
    exercise.destroy
    render json: exercise
  end
end
