class RecommendationsController < ApplicationController
  before_action :admin_login, only: [:new, :create, :edit, :update, :destroy]

  def new
    @food = Recommendation.new
    @foods = Recommendation.order(created_at: :DESC)
  end

  def create
    @food = Recommendation.new(recommendations_params)
    if @food.save
      redirect_to edit_recommendation_path(@food.id)
    else
      @foods = Recommendation.all
      render :new
    end
  end

  def index
  end

  def edit
    @food = Recommendation.find(params[:id])
  end

  def update
    food = Recommendation.find(params[:id])
    food.update(recommendations_params)
    redirect_to new_recommendation_path
  end

  def destroy
    @food = Recommendation.find(params[:id])
    @food.destroy
    redirect_to new_recommendation_path
  end

  private

  def recommendations_params
    params.require(:recommendation).permit(:image, :name, :tax_price, :details)
  end
   # --------------ログインしていない場合ルートパスに戻る----------------
  def admin_login
    unless signed_in?
      redirect_to root_path
    end
  end
end
