class PhysicalhealthsController < ApplicationController
  def index
    physhlths = PhysicalHealth.all # model.all
    render json: physhlths
  end

  def show
    physhlth = PhysicalHealth.find(params[:id])
    puts params[:id]
    render json: physhlth
  end

  def create
    physhlth = PhysicalHealth.create(types: params[:name])
    render json: physhlth
  end

  def update
    physhlth = PhysicalHealth.find(params[:id])
    physhlth.update(
      name: params[:name] || physhlth.types
    )
    render json: physhlth
  end

  def destroy
    physhlth = PhysicalHealth.find(params[:id])
    physhlth.destroy
    render json: physhlth
  end
end
