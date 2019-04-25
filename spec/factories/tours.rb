FactoryBot.define do
  factory :tour do
    date { "2019-04-25" }
    location { "MyString" }
    city { "MyString" }
    state { "MyString" }
    buy_ticket_link { "MyString" }
    buy_vip_ticket_link { "MyString" }
    user { nil }
  end
end
