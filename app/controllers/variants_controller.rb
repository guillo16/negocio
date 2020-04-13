class VariantsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @variant = Variant.new(variant_params)
    @variant.car = @car
    if @variant.save
      redirect_to product_path(@car)
    else
      render 'products/show'
    end
  end

  private

  def variant_params
    params.require(:variant).permit(:size_name)
  end
end
