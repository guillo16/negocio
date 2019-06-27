class OrdersController < ApplicationController
  def create
    cart = Cart.find(params[:cart_id])
    order  = Order.create!(amount: cart.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end
