require 'rails_helper'

RSpec.describe Post, type: :model do
  # we have to associations for post class, then we need a context
  context 'Associations' do
    it 'belongs_to user' do
      association = Post.reflect_on_association(:user).macro # returns association belongs_to
      expect(association).to eq(:belongs_to)
    end

    it 'belongs_to category' do
      association = described_class.reflect_on_association(:category).macro
      # association = Post.reflect_on_association(:category).macro
      expect(association).to eq(:belongs_to)
    end
  end
end
