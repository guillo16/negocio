class VariantsController < ApplicationController
  def new

  end

  def create
    @car = Car.find(params[:car_id])
    @variant = Variant.new(variant_params)
    @variant.car = @car
    if @variant.save
      redirect_to cars_path
    else
      render :new
    end
  end

  private

  def variant_params
    params.require(:variant).permit(:size_name)
  end
end
