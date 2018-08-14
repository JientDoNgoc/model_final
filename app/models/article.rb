class Article < ActiveRecord::Base
  has_many :texts
  has_many :images
  validates :title, presence: true
  validates :like_count, numericality: { greater_than_or_equal_to: 0 }

  def published?
    self.published_at.present? && published_at < Time.now
  end
end
