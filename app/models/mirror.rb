class Mirror < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => ["128x128#", :png] }
  validates_presence_of :name, :link
end
