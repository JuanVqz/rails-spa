FactoryBot.define do
  factory :movie do
    sequence(:name) { |n| "movie#{n}" }
    description { "MyString" }
    year { "MyString" }
    ranking { "MyString" }
    category { nil }
  end
end
