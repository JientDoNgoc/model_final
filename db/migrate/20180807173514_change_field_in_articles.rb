class ChangeFieldInArticles < ActiveRecord::Migration[5.2]
  def up
    change_column :articles, :published_at, :date
  end
  def down
    change_column :articles, :published_at, :datetime
  end
end
