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
    @variant = Variant.new
    @review = Review.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :price_cents, :photo1)
  end
end
