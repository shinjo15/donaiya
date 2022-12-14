class CartItemsController < ApplicationController
  def index
    @cart_items = current_cart.cart_items.all
    @total = @cart_items.inject(0) { |sum, item| sum + item.sum_of_price }.to_i
  end

  def create
    cart = current_cart
    takeout_item = TakeoutItem.find(params[:takeout_item_id])
    @buy_item = cart.add_takeout_item(takeout_item.id)
    unless @buy_item.amount
      @buy_item.amount = 0
    end
    @buy_item.amount += cart_item_params[:amount].to_i
    @buy_item.save
    redirect_to takeout_item_cart_items_path
  end

  def destroy
    buy_item = CartItem.find(params[:id])
    buy_item.destroy
    redirect_to takeout_item_cart_items_path
  end

  def destroy_all
    cart = current_cart
    cart.cart_items.destroy_all
    redirect_to takeout_item_cart_items_path(cart.id)
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:amount)
  end
end
