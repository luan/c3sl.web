class HomeController < ApplicationController
  def index
    @articles = Article.lastest 5
  end
end
