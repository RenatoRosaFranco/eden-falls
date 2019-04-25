FactoryBot.define do
  factory :music do
    name { "MyString" }
    description { "MyText" }
    letter { "MyText" }
    slug { "MyString" }
    tags { "MyString" }
    album { nil }
    user { nil }
  end
end
