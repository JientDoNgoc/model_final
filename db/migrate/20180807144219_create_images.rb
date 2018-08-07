class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :headline
      t.integer :position
      t.string :image_URL
      t.integer :like_count, default: 0
    end
  end
end
