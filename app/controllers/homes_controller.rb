class HomesController < ApplicationController
  def top
    @foods = Recommendation.all
  end

  def admin_top
  end
end
