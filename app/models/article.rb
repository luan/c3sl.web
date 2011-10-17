class Article < ActiveRecord::Base
  has_attached_file :image

  validates_presence_of :title, :body, :published_at

  default_scope :order => "published_at DESC"
  scope :published, lambda { where("published_at <= ?", Date.today) }
  scope :lastest, lambda { |n| published.limit(n) }
end
