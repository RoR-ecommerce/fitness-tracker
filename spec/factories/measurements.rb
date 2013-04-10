FactoryGirl.define do
  factory :measurement do
    chest  '1.5'
    arms   '1.5'
    waist  '1.5'
    hips   '1.5'
    thighs '1.5'
    weight '1.5'

    association :step, :day_1

    trait :in_progress do
      association :track, :in_progress
    end

    trait :complete do
      association :track, :complete
    end
  end
end
