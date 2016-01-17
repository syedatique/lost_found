class LostsController < ApplicationController
  
  load_and_authorize_resource
  before_action :set_lost, only: [:show, :edit, :update, :destroy]

  # GET /losts
  def index
    @losts = Lost.all
  end

  # GET /losts/1
  def show
  end

  # GET /losts/new
  def new
    @lost = Lost.new
  end

  # GET /losts/1/edit
  def edit
  end

  # POST /losts
  def create
    @lost = Lost.new(lost_params)

    respond_to do |format|
      if @lost.save
        format.html { redirect_to @lost, notice: 'Lost was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /losts/1
  def update
    respond_to do |format|
      if @lost.update(lost_params)
        format.html { redirect_to @lost, notice: 'Lost was successfully updated.' }
        format.json { render :show, status: :ok, location: @lost }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /losts/1
  def destroy
    @lost.destroy
    respond_to do |format|
      format.html { redirect_to losts_url, notice: 'Lost was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lost
      @lost = Lost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lost_params
      params.require(:lost).permit(:lost_img, :title, :lost_date, :location, :description, :reward, :user_id, :contact_info, :category_id)
    end
end
