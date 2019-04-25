FactoryBot.define do
  factory :post do
    thumbnail { "MyString" }
    title { "MyString" }
    description { "MyText" }
    content { "MyText" }
    published { false }
    slug { "MyString" }
    tags { "MyString" }
    category { nil }
    user { nil }
  end
end
