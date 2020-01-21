FactoryBot.define do
    factory :idea do
        title { Faker::Job.title }
        description { Faker::Job.field }
        min_salary { rand(20_001..100_000) }
        max_salary { rand(100_001..300_000) }
        association(:user, factory: :user)
    end
  end