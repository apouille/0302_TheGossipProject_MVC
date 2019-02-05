
FactoryBot.define do
  factory :message do
    content { Faker::Lorem.sentence }
    recipient { FactoryBot.create(:user)}
    sender { FactoryBot.create(:user)}
  end
end
