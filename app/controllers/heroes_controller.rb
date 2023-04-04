class HeroesController < ApplicationController
    def index
        render json: Hero.all, except: [:created_at, :updated_at]
    end
    
    def show
        render json: Hero.find(params[:id]), include: { powers: { except: [:created_at, :updated_at] } }, except: [:created_at, :updated_at]
    rescue ActiveRecord::RecordNotFound
        render json: { error: "Hero not found" }, status: :not_found
    end
end
