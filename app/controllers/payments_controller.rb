class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  def create
    # DESTROY CART
    @cart = Cart.find(session[:cart_id])
    @cart.destroy
    session[:cart_id] = nil

    @order.update(state: 'paid')
    redirect_to order_path(@order)
  end

  private

  def set_order
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end
end
