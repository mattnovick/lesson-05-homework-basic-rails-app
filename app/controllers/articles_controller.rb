class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  private
  
  def article_params     
  # using strong params to only permit the attributes (fields) that we explicitly allow     
  params.require(:article).permit(:title, :body)   
  end
end