class VariantsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @variant = Variant.new(variant_params)
    @variant.car = @car
    if @variant.save
      redirect_to car_path(@car)
    else
      render 'cars/show'
    end
  end

  def destroy
    @variant = Variant.find(params[:id])
    @variant.destroy
    redirect_to cars_path
  end

  private

  def variant_params
    params.require(:variant).permit(:size_name, :stock)
  end
end
