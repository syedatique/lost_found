class CommentsController < ApplicationController

  before_action :load_commentable

  def index
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    params.permit!
    @comment = @commentable.comments.new(params[:comment])
    if @comment.save
      flash[:notice] = "Successfully created comment."
      redirect_to @commentable
    else
      render :new
    end
  end


  private
  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end
  # def load_commentable
  #   klass = [Found, Lost].detect {|c| params["#{c.titlt.underscore}_id"]} 
  #   @commentable = klass.find(params["#{klass.name.titlt.underscore}_id"])
  # end

  def comment_params
    params.require(:comment).permit(:content, :commentable_id, :commentable_type)
  end

end
