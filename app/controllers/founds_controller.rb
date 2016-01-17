class FoundsController < ApplicationController

  # load_and_authorize_resource
  before_action :set_found, only: [:show, :edit, :update, :destroy]

  # GET /founds
  def index
    @founds = Found.all
  end

  # GET /founds/1
  def show
  end

  # GET /founds/new
  def new
    @found = Found.new
  end

  # GET /founds/1/edit
  def edit
  end

  # POST /founds
  def create
    @found = Found.new(found_params)

    respond_to do |format|
      if @found.save
        format.html { redirect_to @found, notice: 'Found was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /founds/1
  def update
    respond_to do |format|
      if @found.update(found_params)
        format.html { redirect_to @found, notice: 'Found was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /founds/1
  def destroy
    @found.destroy
    respond_to do |format|
      format.html { redirect_to founds_url, notice: 'Found was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_found
      @found = Found.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def found_params
      params.require(:found).permit(:found_img, :title, :found_date, :location, :description, :contact_info, :user_id, :category_id)
    end
end
