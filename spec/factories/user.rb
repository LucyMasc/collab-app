FactoryBot.define do
  factory :user do
    name { "Test1" }
    email { "test1@test.com" }
    password { "123456" }
    password_confirmation { "123456" }
  end
end
