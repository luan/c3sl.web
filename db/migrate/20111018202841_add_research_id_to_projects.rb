class AddResearchIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :research_id, :integer
  end
end
