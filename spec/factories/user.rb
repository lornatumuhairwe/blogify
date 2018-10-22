FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Code.nric }
  end
end
