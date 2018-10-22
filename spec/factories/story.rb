FactoryBot.define do
  factory :story do
    title { Faker::Book.title }
    content { Faker::Lorem.paragraphs(10).join('. ') }
    user
  end
end
