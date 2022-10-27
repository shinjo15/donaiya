class CartItemsController < ApplicationController
  def index
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_items = current_cart.cart_item.all
    if CartItem.find_by(item_id: params[:cart_item][:item_id], customer_id: current_customer.id )
      @sam = CartItem.find_by(item_id: params[:cart_item][:item_id], customer_id: current_customer.id )
      new_amount = @sam.amount + @cart_item.amount
      @sam.update(amount: new_amount)
      @cart_item.delete
    else
      @cart_item.customer_id = current_customer.id
      @cart_item.save!
    end
    redirect_to cart_items_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:takeout_item_id, :amount)
  end
end
