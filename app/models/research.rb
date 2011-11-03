class Research < ActiveRecord::Base

  has_attached_file :image,
                    :styles => { :thumb => "128x128#", :normal => "256x256#" },
                    :storage => :Dropboxstorage,
                    :path => "/:class/:attachment/:id/:style/:filename",
                    :url => "http://dl.dropbox.com/u/47883552/:class/:attachment/:id/:style/:filename"

  validates_presence_of :title, :description, :image
  validates_uniqueness_of :title

  has_many :projects

  def title=(_title)
    super(_title) unless title.eql?("Software Livre")
  end
end
