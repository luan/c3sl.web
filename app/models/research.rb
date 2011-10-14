class Research < ActiveRecord::Base
  has_attached_file :image
  validates_presence_of :title, :description, :image
end
