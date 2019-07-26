class CarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @cars = Car.all
    if params["brand"]
      @cars = Car.where(brand: params["brand"])
    elsif params["price_cents"]
      @cars = Car.order(price_cents: :desc)
    elsif params["created_at"]
      @cars = Car.order(created_at: :desc)
    else
      @cars
    end
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
  end
end
