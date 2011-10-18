class Project < ActiveRecord::Base
  validates_presence_of :title, :body
  belongs_to :research
end
