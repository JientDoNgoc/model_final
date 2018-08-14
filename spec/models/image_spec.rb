require 'rails_helper'

RSpec.describe Image, type: :model do
  context 'Validations' do
    it { should validate_presence_of(:headline) }
    it { should validate_presence_of(:image_URL) }
    it { should validate_numericality_of(:like_count).
      is_greater_than_or_equal_to(0)}
    it "default scope" do
      expect(Image.all.to_sql).to eq Image.all.order(position: :asc).to_sql
    end
  end

  context 'Associations' do
    it { should belong_to(:article) }
  end
end
