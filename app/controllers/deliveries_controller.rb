class DeliveriesController < ApplicationController
    def index
      @deliveries = Delivery.all
    end 

    def create
      @delivery = Delivery.new(params_delivery)
      @drone = Drone.find(params[:drone_id])
      @delivery.drone = @delivery
      @delivery.save 
      redirect_to drone_path(@drone)
    end

    private 

    def params_delivery
      params.require(:delivery).permit(:delivery_time, :delivery_address, :description, :weight, :status)
    end
end
