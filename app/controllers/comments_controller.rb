class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)

    if @comment.save
      flash[:notice] = 'Comment successfully created!'
      redirect_to @article
    else
      flash.now[:alert] = @comment.errors.full_messages.join(', ')
      render :new
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:message)
  end

end
