require 'rails_helper'

RSpec.describe Text, type: :model do
  context 'Validations' do
    it { should validate_presence_of(:headline) }
    it { should validate_presence_of(:sentence) }
    it { should validate_numericality_of(:like_count).
      is_greater_than_or_equal_to(0)}
    it "default scope" do
      expect(Text.all.to_sql).to eq Text.all.order(position: :asc).to_sql
    end
  end

  context 'Associations' do
    it { should belong_to(:article) }
  end
end
