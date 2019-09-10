class UsersController < ApplicationController
    before_action :find_user, only: [:index, :show, :edit, :update, :delete]

    def index
        @users = Pin.all
        render json: @users
    end

    def show
        user = Pin.find_by(id: params[:id])
        if user
            render json: { id: user.id, name: user.name }
        else
            render json: { message: 'User not found' }
        end
    end

    def create
        user = Pin.create(user_params)
        render json: user
    end

    def update
        user = Pin.update(user_params)
        render json: user
    end


    def destroy
        user.destroy
        render json: {}
    end

    private

    def find_pin 
        @user = User.find_by(id: params[:id])
    end
    
    def pin_params
        params.require(:user).permit(:name)
    end
end
