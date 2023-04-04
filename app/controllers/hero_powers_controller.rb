class HeroPowersController < ApplicationController
    def create
        hero = Hero.find(params[:hero_id])
        power = Power.find(params[:power_id])
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power.hero, include: { powers: { except: [:created_at, :updated_at] } }, except: [:created_at, :updated_at], status: :created
    rescue ActiveRecord::RecordNotFound
        render json: { error: "Hero or Power not found" }, status: :not_found
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    private

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
