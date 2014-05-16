class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def show
    @article = Article.find(params[:id])

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: article_params[:title], url: article_params[:url], user: current_user)

    if @article.save
      flash[:notice] = 'Article successfully created!'
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
