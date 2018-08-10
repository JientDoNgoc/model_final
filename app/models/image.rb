class Image < ActiveRecord::Base
  default_scope { order(:position) }
  belongs_to :article, optional: true
  validates :headline, :image_URL, presence: true
end
