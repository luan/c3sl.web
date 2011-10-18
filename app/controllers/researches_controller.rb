class ResearchesController < ApplicationController
  def index
    @researches = Research.all(:include => :projects)
  end
end
