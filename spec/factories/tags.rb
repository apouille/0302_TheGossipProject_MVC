
FactoryBot.define do
  factory :tag do
    title { Faker::Lorem.words(1)}
  end
end
