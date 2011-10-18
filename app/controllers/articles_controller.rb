class ArticlesController < ApplicationController
  def index
    @articles = Article.all :order => "published_at"
    @articles_month = @articles.group_by { |a| a.published_at.beginning_of_month }
  end
end
