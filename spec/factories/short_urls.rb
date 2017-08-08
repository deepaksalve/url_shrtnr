FactoryGirl.define do
  factory :short_url do
    original_url { Faker::Internet.url }
    short_url { Faker::Internet.slug }
    clicks { Faker::Number.between(1, 100) }

    factory :invalid_short_url do
      short_url { '' }
    end

    factory :invalid_original_url do
      original_url { '' }
    end
  end
end
