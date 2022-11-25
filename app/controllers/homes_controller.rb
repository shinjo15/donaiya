class HomesController < ApplicationController
  before_action :admin_login, only: [:admin_top]

  def top
    @foods = Recommendation.order(created_at: :DESC).limit(4)
    @takeout_items = TakeoutItem.order(is_active: :asc).order(created_at: :DESC).limit(3)
    @notices = Notice.order(created_at: :DESC).limit(3)
  end

  def admin_top
    @orders = Order.order(created_at: :DESC)
  end

  private
# --------------ログインしていない場合ルートパスに戻る----------------
  def admin_login
    unless signed_in?
      redirect_to root_path
    end
  end
end
