FactoryBot.define do
  factory :prediction do
    gamePk { "#{Faker::Number.number(digits: 10)}" }
    user { nil }
    expected_winner { "MyString" }
  end
end
