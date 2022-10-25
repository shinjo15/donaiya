class HomesController < ApplicationController
  def top
    @foods = Recommendation.order(created_at: :DESC).limit(4)
    @takeout_items = TakeoutItem.order(created_at: :DESC).limit(3)
    @notices = Notice.order(created_at: :DESC).limit(3)
  end

  def admin_top
  end
end
