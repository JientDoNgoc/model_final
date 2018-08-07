class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :headline
      t.integer :position
      t.text :sentence
      t.integer :like_count, default: 0
    end
  end
end
