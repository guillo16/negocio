class CarsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end
end
