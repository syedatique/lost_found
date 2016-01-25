class SearchesController < ApplicationController
  

  def new
    @search = Search.new
  end

  def create
    @search = Search.create(search_params)
    
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private 
  def search_params
     params.require(:search).permit(:keywords, :description, :location, :start_date, :end_date, :name, :phone, :email, :found_keywords, :found_description, :found_location, :found_start_date, :found_end_date, :found_name, :found_phone, :found_email)
  end







end
