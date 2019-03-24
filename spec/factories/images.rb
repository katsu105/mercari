FactoryBot.define do
  factory :image do
    item_id    {1}
    image      {["a.jpg", "b.png"]}
    item
  end
end
