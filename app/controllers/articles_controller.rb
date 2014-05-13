class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = 'Player successfully created!'
      redirect_to root_path
    else
      flash.now[:alert] = @article.errors.full_messages.join(', ')
      render :new
    end
  end


  private

  def article_params
    params.require(:article).permit(:title, :url)
  end

end