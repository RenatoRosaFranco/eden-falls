FactoryBot.define do
  factory :album do
    thumbnail { "MyString" }
    name { "MyString" }
    description { "MyText" }
    release_date { "2019-04-25" }
    slug { "MyString" }
    tags { "MyString" }
    user { nil }
  end
end
