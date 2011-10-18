class Research < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => "128x128#", :normal => "256x256#" }
  validates_presence_of :title, :description, :image
  has_many :projects
end
