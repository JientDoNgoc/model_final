class Text < ActiveRecord::Base
  default_scope { order(:position) }
  belongs_to :article, optional: true
  validates :headline, :sentence, presence: true
  validates :like_count, numericality: { greater_than_or_equal_to: 0 }
end
