class DronesController < ApplicationController
    before_action :set_drone, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user! , only:  [:new, :create]

    def index
      @drones = Drone.all.order("created_at DESC").geocoded

      if params[:address]
        @drones = @drones.search_by_address(params[:address])
      end

      @markers = @drones.map do |drone|
        {
          lat: drone.latitude,
          lng: drone.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { drone: drone })
        }
      end
    end

    def show
      @delivery = Delivery.new
    end

    def new
      @drone = Drone.new
    end

    def create
      @drone = Drone.new(params_drone)
      @drone.user_id = current_user.id
      if @drone.save
        redirect_to drone_path(@drone)
      else
        render :new
      end
    end

    def edit
    end

    def update
      @drone.update(params_drone)

      redirect_to drone_path(@drone)
    end

    def destroy
      @drone.destroy

      redirect_to drones_path
    end

    private

    def params_drone
      params.require(:drone).permit(:model, :autonomy, :maximum_distance, :carry_capacity, :delivery_price, :address, :photo)
    end

    def set_drone
      @drone = Drone.find(params[:id])
    end
end
