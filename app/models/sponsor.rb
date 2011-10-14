class Sponsor < ActiveRecord::Base
  has_attached_file :image
  validates_presence_of :name, :link, :image
end
