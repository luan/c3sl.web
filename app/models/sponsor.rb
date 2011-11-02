class Sponsor < ActiveRecord::Base
  has_attached_file :image,
                    :styles => { :thumb => "64x64#", :normal => "256x256#" },
                    :storage => :Dropboxstorage,
                    :path => "/:class/:attachment/:id/:style/:filename",
                    :url => "http://dl.dropbox.com/u/47883552/:class/:attachment/:id/:style/:filename"
  validates_presence_of :name, :link, :image
end
