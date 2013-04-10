FactoryGirl.define do
  factory :step do
    program

    trait :day_1 do
      name       'Take Measurements'
      step_class 'Measurement'
      day        0
      position   1
    end

    trait :day_2 do
      name       'Power Punch'
      step_class 'Workout'
      day        1
      position   2
    end

    trait :day_3 do
      name       'Cardio Cross Train'
      step_class 'Workout'
      day        2
      position   3
    end
  end
end
