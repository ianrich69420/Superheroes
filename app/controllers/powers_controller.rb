class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Power.all, except: [:created_at, :updated_at]
    end
    
    def show
        render json: find_power, except: [:created_at, :updated_at]
    end

    def update
        find_power.update!(description: params[:description])
        render json: find_power, except: [:created_at, :updated_at], status: :accepted
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity    
    end

    private

    def find_power
        Power.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end
end
