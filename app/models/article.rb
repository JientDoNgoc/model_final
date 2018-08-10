class Article < ActiveRecord::Base
  has_many :texts
  has_many :images
  validates :title, presence: true

  def published?
    self.published_at.present? && published_at < Time.now
  end
end
