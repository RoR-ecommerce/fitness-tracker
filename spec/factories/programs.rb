FactoryGirl.define do
  factory :program do
    name { Faker::Lorem.sentence }

    factory :program_with_steps do
      after(:create) do |program, e|
        FactoryGirl.create(:step, :day_1, program: program)
        FactoryGirl.create(:step, :day_2, program: program)
        FactoryGirl.create(:step, :day_3, program: program)
      end
    end
  end
end
