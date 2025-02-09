class ProductionsController < ApplicationController
    # Break Out Activity #2 - Add Update Action
    # Break Out Activity #2 - Add Destroy Action
    # Break Out Activity #2 - Add Strong Params

    def index 
        render json: Production.all
    end 

    def show
        production = Production.find(params[:id])
        render json: production, include: :production_roles
    end 

    def create
        production = Production.create!(production_params)
        render json: production, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def update
        production = find_production
        production.update(production_params)
        render json: production
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def destroy
        production = find_production
        production.destroy
        head :no_content
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    private
    
    def find_production
        Production.find(params[:id])
    end

    def production_params
        params.permit(:title, :genre, :description, :budget, :image, :director, :ongoing)
    end

end
