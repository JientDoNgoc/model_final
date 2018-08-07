class Article < ActiveRecord::Base
  has_many :texts, :images
  validates :title, presence: true
  validate :published_time_must_be_in_past

  def published_time_must_be_in_past
    return if published_at.blank?
    if published_at.date.present? && published_at.date > Date.today
      errors.add(:published_at, "must be in the past")
    end
  end
end