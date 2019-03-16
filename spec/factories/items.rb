FactoryBot.define do
  factory :item do
    id               {1}
    name             {"タンクトップ"}
    text             {"古着のタンクトップです。"}
    status           {"unused"}
    shipping_cost    {"2"}
    shipping_method  {"8"}
    prefectures      {"青森県"}
    ship_date        {"two_three"}
    price            {"1000"}
    category
  end
end