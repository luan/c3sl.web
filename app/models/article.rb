class Article < ActiveRecord::Base
  has_attached_file :image

  validates_presence_of :title, :body, :published_at
end
