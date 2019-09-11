class LikesController < ApplicationController
    before_action :find_like, only: [:index, :show, :edit, :update, :delete]

    def index
        @likes = Like.all
        render json: @likes
    end

    def show
        like = Like.find_by(id: params[:id])
            render json: { id: like.id, user_id: like.user_id , pin_id: like.pin_id }
        
    end

    def create
        like = Like.create(like_params)
        #byebug
        render json: like

    end

    def update
        like = Like.find_by(id: params[:id])
        like.update(like_params)
        render json: like
    end


    def destroy
        @like = Like.find_by(id: params[:id])
        @like.destroy
        render json: {}
    end

    private

    def find_like
        @like = Like.find_by(id: params[:id])
    end
    
    def like_params
        params.require(:like).permit(:user_id, :pin_id)
    end
end
