FactoryGirl.define do
  factory :article do
    title { Faker::Company.catch_phrase }
    url { Faker::Internet.url }
  end
end
