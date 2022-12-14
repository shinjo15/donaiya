class TakeoutItemsController < ApplicationController
   before_action :admin_login, only: [:new, :create, :edit, :update, :destroy]
  def new
    @takeout_item = TakeoutItem.new
    @takeout_items = TakeoutItem.order(created_at: :DESC)
  end

  def create
    @takeout_item = TakeoutItem.new(takeout_items_params)
    if @takeout_item.save
      redirect_to edit_takeout_item_path(@takeout_item.id)
    else
      @takeout_items = TakeoutItem.all
      render :new
    end
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
    # --------------ログインしていない場合ルートパスに戻る----------------
  def admin_login
    unless signed_in?
      redirect_to root_path
    end
  end
end
