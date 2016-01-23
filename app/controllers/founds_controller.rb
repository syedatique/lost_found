class FoundsController < ApplicationController

  load_and_authorize_resource
  before_action :set_found, only: [:show, :edit, :update, :destroy]

  # GET /founds
  def index
    if params[:name]
      @founds = Found.search("%#{params[:name]}%").paginate(:page => params[:page], :per_page => 3)
      flash[:notice] = "No search result found".html_safe if @founds.empty?
    elsif params[:category_id]
      @founds = Found.where(:category_id => params[:category_id]).paginate(:page => params[:page], :per_page => 3).order('id DESC')
      flash[:notice] = "No ad posted in this category".html_safe if @founds.empty?
    else
      @founds = Found.paginate(:page => params[:page], :per_page => 3).order('id DESC')
    end
  end

  # GET /founds/1
  def show
    @commentable = @found
    @comments = @commentable.comments
    @comment = Comment.new
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
      params.require(:found).permit(:found_img, :title, :found_date, :location, :description, :contact_info, :user_id, :category_id, comments_attributes: :content)
      # :comments, :comments_attributes, :commentable_id, :commentable_type, 
    end
end
