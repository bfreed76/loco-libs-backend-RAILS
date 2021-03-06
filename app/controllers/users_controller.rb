class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        users = User.all
        render json: users
    end

    def create
        user = params[:user]["username"]
        render json: user
    end
    
    private

    def render_not_found_response
        render json: { error: "Alert not found" }, status: :not_found
    end

end
