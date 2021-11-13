class PlantsController < ApplicationController
    
    def index 
        plants = Plant.all 
        render json: plants
    end

    def show 
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create 
        newPlant = Plant.create(params.permit(:name, :image, :price))
        render json: newPlant, status: :created
    end
  
  end