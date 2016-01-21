class LostsController < ApplicationController
  
  load_and_authorize_resource
  before_action :set_lost, only: [:show, :edit, :update, :destroy]

  # GET /losts
  def index
    if params[:name]
      @losts = Lost.where("title like ?", "%#{params[:name]}%").paginate(:page => params[:page], :per_page => 3).order('id DESC')
      flash[:notice] = "No search result found".html_safe if @losts.empty?
    elsif params[:category_id]
      @losts = Lost.where(:category_id => params[:category_id]).paginate(:page => params[:page], :per_page => 3).order('id DESC')
      flash[:notice] = "No ad posted in this category".html_safe if @losts.empty?
    else
      @losts = Lost.paginate(:page => params[:page], :per_page => 3).order('id DESC')
    end

    
      # if params[:category_id]
      #   @losts = Lost.where(:category_id => params[:category_id]).paginate(:page => params[:page], :per_page => 3).order('id DESC')
      # else
      #   @losts = Lost.paginate(:page => params[:page], :per_page => 3).order('id DESC')
      # end
 

    # if params[:name]
    #   @losts = Lost.where("title like ?", "%#{params[:name]}%").paginate(:page => params[:page], :per_page => 3).order('id DESC')
    # else
    #   @losts = Lost.paginate(:page => params[:page], :per_page => 3).order('id DESC')
    # end
  end

  # GET /losts/1
  def show
    @commentable = @lost
    @comments = @commentable.comments
    @comment = Comment.new
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
      params.require(:lost).permit(:lost_img, :title, :lost_date, :location, :description, :reward, :user_id, :contact_info, :category_id, comments_attributes: :content)
    end
end
