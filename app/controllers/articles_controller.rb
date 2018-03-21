class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect
     
    # Pasa los valaroes del form a una instancia article    
    # @article = Article.new(params[:article])
 
    @article = Article.new(article_params)

    # Lo guarda en la BBDD
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
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

    # Tenemos que incluir en la lista blanca nuestros parámetros 
    # del controlador para evitar la asignación masiva incorrecta.
    params.require(:article).permit(:title, :text)
  end
end
