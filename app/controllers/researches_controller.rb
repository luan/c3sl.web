class ResearchesController < ApplicationController
  def index
    @researches = Research.all(:include => :projects).reject do |research|
      research.title.eql? "Software Livre"
    end
  end

  def free_software
    @research = Research.find_by_title("Software Livre")
    @projects = @research.projects
  end
end
