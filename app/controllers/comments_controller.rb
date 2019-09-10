class CommentsController < ApplicationController
    before_action :find_comment, only: [:index, :show, :edit, :update, :delete]

    def index
        @comments = Comment.all
        render json: @comments
    end

    def show
        comment = Comment.find_by(id: params[:id])
        if comment
            render json: { id: comment.id, content: comment.content, pin_id: comment.pin_id }
        else
            render json: { message: 'Comment not found' }
        end
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def update
        comment = Comment.update(comment_params)
        render json: comment
    end


    def destroy
        comment.destroy
        render json: {}
    end

    private

    def find_comment
        @comment = Comment.find_by(id: params[:id])
    end
    
    def pin_params
        params.require(:comment).permit(:name, :longitude, :latitude, :description, :image_url)
    end
end
