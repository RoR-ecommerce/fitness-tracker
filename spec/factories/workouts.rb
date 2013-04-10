FactoryGirl.define do
  factory :workout do
    emotion   'MyString'
    sweat     1
    intensity 1
    notes     'MyText'

    trait :in_progress do
      association :track, :in_progress
      association :step,  :day_2
    end

    trait :complete do
      association :track, :complete
      association :step,  :day_2
    end
  end
end
