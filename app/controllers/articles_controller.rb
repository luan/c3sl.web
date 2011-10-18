class ArticlesController < ApplicationController
  def index
    @articles = Article.group_published
  end
end
