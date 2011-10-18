class Article < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => "64x64#", :normal => "256x256#" }

  validates_presence_of :title, :body, :published_at

  default_scope :order => "published_at DESC"
  scope :published, lambda { where("published_at <= ?", Date.today) }
  scope :lastest, lambda { |n| published.limit(n) }

  def self.group_published
    articles = Article.published.group_by { |article| article.published_at.beginning_of_year }

    articles.each do |key, value|
      articles[key] = value.group_by { |article| article.published_at.beginning_of_month }
    end
    articles
  end
end
