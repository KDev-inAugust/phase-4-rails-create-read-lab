class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
      end

      def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
      end

      def create
        plant = Plant.create(name: params[:name], image: params[:image])
        render json: plant
      end

    #   private

    #   def plant_params 
    #     params.permit(:name, :image)
    #   end
end