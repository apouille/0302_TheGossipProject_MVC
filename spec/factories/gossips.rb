
FactoryBot.define do
  factory :gossip do
    title { Faker::Lorem.words(1)}
    content { Faker::Lorem.sentence }
    user { FactoryBot.create(:user)}
  end
end
