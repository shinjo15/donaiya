class TakeoutItemsController < ApplicationController
  def new
    @takeout_item = TakeoutItem.new
    @takeout_items = TakeoutItem.all
  end

  def create
    takeout_item = TakeoutItem.new(takeout_items_params)
    takeout_item.save
    redirect_to edit_takeout_item_path(takeout_item.id)

  end

  def index
    @takeout_items = TakeoutItem.all
  end

  def edit
    @takeout_item = TakeoutItem.find(params[:id])
  end

  def update
    takeout_item = TakeoutItem.find(params[:id])
    takeout_item.update(takeout_items_params)
    redirect_to new_takeout_item_path
  end

  def show
    @takeout_item = TakeoutItem.find(params[:id])
    @cart_item = CartItem.new
  end

  def destroy
    takeout_item = TakeoutItem.find(params[:id])
    takeout_item.destroy
    redirect_to new_takeout_item_path
  end

  private

  def takeout_items_params
    params.require(:takeout_item).permit(:image, :takeout_name, :tax_price, :takeout_details, :is_active)
  end
end
