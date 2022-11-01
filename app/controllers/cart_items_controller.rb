class CartItemsController < ApplicationController
  def index
  end

  def create
   cart = current_cart
   takeout_item = TakeoutItem.find(params[:takeout_item_id])
   @buy_item = cart.add_takeout_item(takeout_item.id)

   respond_to do |format|
    if @buy_item.save
      format.html{redirect_to root}
      format.json{render :show, status: :created, location: @buy_item}
    else
      format.html {redirect_to takeout_item_path}
      format.json{render json: @buy_item}
    end
   end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:takeout_item_id, :amount)
  end
end
