class Api::V1::RestaurantsController < ApplicationController
  def show
    render json: RestaurantSerializer.new(Restaurant.find(params[:id]))
  end

  def index
    @restaurants = Restaurant.all
    render json: RestaurantSerializer.new(@restaurants).serializable_hash
  end
end
