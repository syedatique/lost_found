class CategoriesController < ApplicationController
  # load_and_authorize_resource
  before_action :authenticate_user!

  before_action :set_category, only: [:show, :edit, :update, :destroy]
  
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    Category.create(category_params) 
    redirect_to(categories_path)
  end

  def show
  end

  def destroy
    @category.destroy
    redirect_to(categories_path)
  end

  def edit
  end

  def update
    @category.update(category_params) 
    redirect_to(categories_path)
  end


  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :category_img)
  end


end