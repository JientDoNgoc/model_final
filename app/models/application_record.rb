class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def increment_like
    self.like_count = self.like_count + 1
    self.save
  end

  def get_like_count
    self.like_count
  end
end
