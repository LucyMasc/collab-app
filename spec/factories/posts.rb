FactoryBot.define do
  factory :post do
    title {"Title test"}
    content {"title test content to factories post"}
    category
    user
  end
end
