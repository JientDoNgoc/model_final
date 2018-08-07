class Text < ActiveRecord::Base
  belongs_to :article, optional: true
  validates :headline, :position, :sentence, presence: true
end