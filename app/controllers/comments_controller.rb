class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  def new
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:notice] = 'Comment successfully created!'
      redirect_to root_path
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