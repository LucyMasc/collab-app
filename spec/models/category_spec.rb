require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has_many posts' do
    association = described_class.reflect_on_association(:posts).macro
    expect(association).to eql(:has_many)
  end

  # or using should to make it more readable:
  # it { should have_many(:posts)}
end
