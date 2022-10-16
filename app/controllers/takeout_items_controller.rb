class TakeoutItemsController < ApplicationController
  def new
    @takeout_item = TakeoutItem.new
  end

  def create
    takeout_item = TakeoutItem.new(takeout_items_params)
    takeout_item.save
    redirect_to edit_takeout_item_path(takeout_item.id)

  end

  def index
  end

  def edit
  end

  def show
  end

  private

  def takeout_items_params
    params.require(:takeout_item).permit(:image, :takeout_name, :tax_price, :takeout_details, :is_active)
  end
end
