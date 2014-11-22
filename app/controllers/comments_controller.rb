class CommentsController < ApplicationController
  before_filter :load_commentable

  def index
  	 @comments = @commentable.comments
  end

  def new
  	@comment = @commentable.comments.new
  end
def create
	article_id = params[:article_id]
	article_comment = Article.find(article_id).have_comments
	if  article_comment	
		@comment = @commentable.comments.new(params[:comment])
		if @comment.save
			redirect_to @commentable, notice: "Comment created!"
		else
			render :new
		end
	else

		redirect_to @commentable, notice: "Comment not created!"
	end
end
  private

  def load_commentable
  	resource, id = request.path.split('/')[1,2]
  	@commentable = resource.singularize.classify.constantize.find(id)
  end
end
