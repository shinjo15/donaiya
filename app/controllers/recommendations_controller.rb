class RecommendationsController < ApplicationController
  def new
    @food = Recommendation.new
    @foods = Recommendation.all
  end

  def create
    food = Recommendation.new(recommendations_params)
    food.save!
    redirect_to edit_recommendation_path(food.id)
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
end
