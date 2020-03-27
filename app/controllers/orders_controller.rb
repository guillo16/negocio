class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.sum('amount_cents') * 0.01
  end

  def show
    @order = current_user.orders.where(state: 'Encargado').find(params[:id])
  end



  def create
    cart = Cart.find(params[:cart_id])
    order = Order.create!(amount: cart.total_price, state: 'Pendientes', user: current_user, cart_id: cart.id)
    redirect_to new_order_payment_path(order)
  end
end
