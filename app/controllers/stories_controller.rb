class StoriesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        stories = Story.all
        render json: stories
    end

    def create
        user = params[:name]
        title = params[:title]
        author = params[:author]
        content = params[:content]

        newAuthor = User.create(name: user)
        newStory = Story.create(title: title, author: author, content: content, user_id: newAuthor.id)

        render json: newStory
    end

    def destroy
        story = Story.find_by(id: params[:id])
        if story
            story.destroy
        end
    end

    private

    def render_not_found_response
        render json: { error: "Alert not found" }, status: :not_found
    end

end
