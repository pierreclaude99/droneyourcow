class ReviewsController < ApplicationController
      before_action :set_delivery, only: [:show, :new, :create, :destroy]

    def index
      @reviews = Review.all
    end

    def show
      @review = Review.find(params[:id])
    end

    def new
      @review = Review.new
    end

    def create
      @review = Review.new(params_review)
      @review.delivery = @delivery
      @review.user = current_user
      if @review.save
        redirect_to deliveries_path
      else
        render :new
      end
    end

    private

    def params_review
      params.require(:review).permit(:rating, :content)
    end

    def set_delivery
      @delivery = Delivery.find(params[:delivery_id])
    end
end
