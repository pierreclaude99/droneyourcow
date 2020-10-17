class DeliveriesController < ApplicationController

  def index
    @deliveries = Delivery.all
  end

  def create
    @drone = Drone.find(params[:drone_id])
    @delivery = Delivery.new(delivery_params)
    @delivery.drone = @drone
    @delivery.user = current_user
    @delivery.status = "En attente"
    #raise

    if @delivery.save
      redirect_to deliveries_path
    else
      flash[:delivery_errors] = @delivery.errors.full_messages
      #redirect_to drone_path(@drone)

    end
  end

  def delivery_params
    params.require(:delivery).permit(:description, :weight, :delivery_address, :delivery_time)
  end
end
