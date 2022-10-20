class HomesController < ApplicationController
  def top
    @foods = Recommendation.all
    @takeout_items = TakeoutItem.all
  end

  def admin_top
  end
end
