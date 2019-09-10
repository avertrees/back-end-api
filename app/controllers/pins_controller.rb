class PinsController < ApplicationController
    def index
        @pins = Pin.all
        render json: @pins
    end

    def show
        pin = Pin.find_by(id: params[:id])
        if pin
            render json: { id: pin.id, name: pin.name, coordinates: [pin.longitude,pin.latitude], description: pin.description, image_url: pin.image_url  }
        else
            render json: { message: 'Pin not found' }
        end
    end
end
