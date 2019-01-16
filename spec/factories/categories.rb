FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "category#{n}" }
    description { "MyText" }
  end

  trait :with_movies do
    after :create do |category|
      create_list :movie, 3, category: category
    end
  end
end
