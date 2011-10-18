class ArticlesController < ApplicationController
  def index
    @articles = Article.group_published
  end

  def show
    @article = Article.find(params[:id])
  end
end
