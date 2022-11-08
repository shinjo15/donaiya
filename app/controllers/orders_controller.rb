class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @current_cart =current_cart
    @cart_items = current_cart.cart_items.all
    @total = @cart_items.inject(0) { |sum, item| sum + item.sum_of_price }.to_i
    @order = Order.new(order_params)
  end

  def complete
  end
  
  def create
    @order = Order.new(order_params)
    @order.save!
    @cart_items = current_cart.cart_items.all
    @cart_items.each do |cart_item|
      order_detail = OrderDetail.new
      order_detail.order_id = @order.id
      order_detail.takeout_item_id = cart_item.takeout_item.id
      order_detail.price = cart_item.takeout_item.tax_price
      order_detail.amount = cart_item.amount
      order_detail.save!
      cart_item.delete
    end
    redirect_to orders_complete_path
  end
  
  def order_params
    params.require(:order).permit(:cart_id, :name, :telephone_number, :receipt_datetime, :request, :payment_amount)
  end
end
