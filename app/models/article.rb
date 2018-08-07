class Article < ActiveRecord::Base
  has_many :texts
  has_many :images
  validates :title, presence: true
  validate :published_time_must_be_in_past

  def published_time_must_be_in_past
    return if published_at.blank?
    if published_at.date.present? or published_at.date > Date.today
      errors.add(:published_at, "must be in the past")
    end
  end

  def self.get_article(article_id)
    Article.joins(:texts, :images).where("text.article_id = image.article_id").order("position ASC")
  end
end