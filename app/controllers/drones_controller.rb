class DronesController < ApplicationController
    before_action :set_drone, only: [:show, :edit, :update, :destroy]

    def index
      @drones = Drone.all
    end

    def show
      @delivery = Delivery.new
    end

    def new
      @drone = Drone.new
    end

    def create
      @drone = Drone.new(params_drone)
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
      params.require(:drone).permit(:model, :autonomy, :maximum_distance, :carry_capacity, :delivery_price)
    end

    def set_drone
      @drone = Drone.find(params[:id])
    end
end
