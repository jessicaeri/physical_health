class WorkoutsController < ApplicationController
  def index
    workouts = Workout.all # model.all
    render json: workouts
  end

  def show
    workout = Workout.find(params[:id])
    puts params[:id]
    render json: workout
  end

  def create
    workout = Workout.create(name: params[:name])
    render json: workout
  end

  def update
    workout = Workout.find(params[:id])
    workout.update(
      name: params[:name] || workout.name
    )
    render json: workout
  end

  def destroy
    workout = Workout.find(params[:id])
    workout.destroy
    render json: workout
  end
end
