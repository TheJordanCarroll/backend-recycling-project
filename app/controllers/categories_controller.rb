class CategoriesController < ApplicationController
  def index
    categories=Category.all
    render json: categories
  end

  def new
  end

  def create
  end

  def show
    category = Category.find(params[:id])
    render json: category
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def category_params
      params.permit(:id, :name, :image, :video, :description)
  end
end
