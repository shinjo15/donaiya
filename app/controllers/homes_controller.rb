class HomesController < ApplicationController
  def top
    @foods = Recommendation.order(created_at: :DESC).limit(4)
    @takeout_items = TakeoutItem.order(is_active: :asc).order(created_at: :DESC).limit(3)
    @notices = Notice.order(created_at: :DESC).limit(3)
    # binding.pry
  end

  def admin_top
    @orders = Order.order(created_at: :DESC)
  end
end
