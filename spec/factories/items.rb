FactoryBot.define do
  factory :item do
    id               { Faker::Number.between(1, 1000) }
    name             { Faker::String.random([1, 100]) }
    text             { Faker::String.random([1, 1000]) }
    status           {"unused"}
    shipping_cost    { Faker::Number.between(1, 2) }
    shipping_method  { Faker::Number.between(1, 10) }
    prefectures      {"青森県"}
    ship_date        {"two_three"}
    price            { Faker::Number.between(1, 99999) }
    category
  end
end