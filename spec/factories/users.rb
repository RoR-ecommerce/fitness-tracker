FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@factory.com" }
    sequence(:uid)   { |n| "#{n}" }
    provider 'ufc'
  end
end
