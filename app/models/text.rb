class Text < ActiveRecord::Base
  belongs_to :article, optional: true
  before_create :create_position
  validates :headline, :sentence, presence: true

  def create_position
    p1 = Text.last.try(:position)
    p2 = Image.last.try(:position)

    p1 ||= 0
    p2 ||= 0

    p = p1 > p2 ? p1 : p2
    self.position = p + 1
  end

  scope :get_sentences, -> (article_id) { where('article_id = ?', article_id) }
end