class StoriesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        stories = Story.all
        render json: stories
    end

    def create
        byebug
    end

    def destroy
        puts "Destroy worked"
    end

    private

    def render_not_found_response
        render json: { error: "Alert not found" }, status: :not_found
    end

end
