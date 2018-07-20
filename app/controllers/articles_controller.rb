class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def eidt
  end


  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to @article
    # render plain: params[:book].inspect
  end

  def update
  end

  def destroy
  end


  private
    def article_params
      params.require(:book).permit(:title,:text)
    end
end
