class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @cart_items = current_cart.cart_items.all
    @total = @cart_items.inject(0) { |sum, item| sum + item.sum_of_price }.to_i
    @order = Order.new(order_params)
  end

  def complete
  end
  
  def order_params
    params.require(:order).permit(:name, :telephone_number, :receipt_datetime, :request)
  end
end
