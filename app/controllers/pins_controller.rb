class PinsController < ApplicationController
    before_action :find_pin, only: [:index, :show, :edit, :update, :delete]

    def index
        @pins = Pin.all
        render json: @pins.to_json(
            :include=>{
                :likes => {:only => [:id, :user_id]}
            }, 
            :except => [:updated_at, :created_at]
        )
        #json: @pins
        
    end

    def show
        pin = Pin.find_by(id: params[:id])
        if pin
            render json: { id: pin.id, name: pin.name, coordinates: [pin.longitude,pin.latitude], description: pin.description, image_url: pin.image_url  }
        else
            render json: { message: 'Pin not found' }
        end
    end

    def create
        pin = Pin.create(pin_params)
        render json: pin.to_json(
            :include=>{
                :likes => {:only => [:id, :user_id]}
            }, 
            :except => [:updated_at, :created_at]
        )
    end

    def update
        pin = Pin.find_by(id: params[:id])
        pin.update(pin_params)
        render json: pin.to_json(
            :include=>{
                :likes => {:only => [:id, :user_id]}
            }, 
            :except => [:updated_at, :created_at]
        )
    end


    def destroy
        @pin = Pin.find_by(id: params[:id])
        @pin.destroy
        render json: {}
    end

    private

    def find_pin 
        @pin = Pin.find_by(id: params[:id])
    end
    
    def pin_params
        params.require(:pin).permit(:name, :longitude, :latitude, :description, :image_url)
    end
end
