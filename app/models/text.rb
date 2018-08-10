class Text < ActiveRecord::Base
  default_scope { order(:position) }
  belongs_to :article, optional: true
  validates :headline, :sentence, presence: true

end
