class VariantsController < ApplicationController
  def new
    @variant = Variant.new
  end

  def create
    @variant = Variant.new(variant_params)
    if @variant.save
      redirect_to cars_path
    else
      render :new
    end
  end

  private

  def variant_params
    params.require(:variant).permit(:size_name, :car_id)
  end
end
