FactoryGirl.define do
  factory :song do
    name    { Faker::Lorem.words(4) }
    length  "9.99"
    year    1500
  end
end
