class Article < ActiveRecord::Base
  has_many :texts
  has_many :images
  validates :title, presence: true

  #def published_time_must_be_in_past
  #  return if published_at.blank?
  #  if published_at.date.present? or published_at.date > Date.today
  #    errors.add(:published_at, "must be in the past")
  #  end
  #end

  def self.get_articles
    #Article.joins(:texts, :images).where("text.article_id = image.article_id").order("position ASC")
    sql = "Select texts.*, images.* FROM texts INNER JOIN images ON texts.article_id = images.article_id ORDER BY porition asd"
    ActiveRecord::Base.connection.execute(sql)
  end


end