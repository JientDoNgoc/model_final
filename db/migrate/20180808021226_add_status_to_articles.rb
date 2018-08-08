class AddStatusToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :status, :string, limit: 10
  end
end
