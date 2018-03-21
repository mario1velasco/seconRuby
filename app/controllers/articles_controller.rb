class ArticlesController < ApplicationController
  def new

  end

  def create
    # render plain: params[:article].inspect
     
    # Pasa los valaroes del form a una instancia article    
    # @article = Article.new(params[:article])
 
    @article = Article.new(article_params)

    # Lo guarda en la BBDD
    @article.save
    redirect_to @article
  end

  def show
    # Busca en la base de datos el article con ese params
    @article = Article.find(params[:id])
  end

  def index
    @articles=Article.all
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
