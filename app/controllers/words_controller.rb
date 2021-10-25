class WordsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        words = Word.all
        render json: words
    end

    private

    def render_not_found_response
        render json: { error: "Alert not found" }, status: :not_found
    end

end
