FactoryBot.define do
  factory :image do
    item_id    { Faker::Number.between(1, 1000) }
    image      {[Faker::Avatar.image, Faker::Avatar.image]}
    item
  end
end
