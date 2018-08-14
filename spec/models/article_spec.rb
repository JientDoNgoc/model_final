require 'rails_helper'

RSpec.describe Article, type: :model do
  before(:all) do
    @a = Article.create(title: 'RspecTest', like_count: 3)
  end
  context 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_numericality_of(:like_count).
    is_greater_than_or_equal_to(0) }

    it 'published ?' do
      expect(@a.published?).to eq false
    end
  end

  context 'Associations' do
    it { should have_many(:texts) }
    it { should have_many(:images) }
  end
end
