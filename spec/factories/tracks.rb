FactoryGirl.define do
  factory :track do
    program
    user

    trait :in_progress do
      last_step_index 1
    end

    trait :complete do
      last_step_index 2
    end
  end
end
