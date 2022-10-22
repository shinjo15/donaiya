class HomesController < ApplicationController
  def top
    @foods = Recommendation.all
    @takeout_items = TakeoutItem.all
    @notices = Notice.all
  end

  def admin_top
  end
end
