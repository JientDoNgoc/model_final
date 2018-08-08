class RemoveFieldsInArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :published_at, :date
    remove_column :articles, :status, :string
  end
end
