FactoryBot.define do
  factory :user do
    name  {"Test"}
    email  {"test@test.com"}
    password  {"abcdef"}
    password_confirmation {"abcdef"}

    # after(:build) do |object, evaluator|
    #   object.skip_confirmation! if evaluator.confirm_user
    # end
  end
end
