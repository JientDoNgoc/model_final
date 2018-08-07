class Image < ActiveRecord::Base
  belongs_to :article, optional: true
  validates :headline, :position, :image_URL, presence: true
end