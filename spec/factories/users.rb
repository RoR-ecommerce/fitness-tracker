FactoryGirl.define do
  factory :user do
    email     { Faker::Internet.email }
    uid       { SecureRandom.uuid }
    provider  'ufc'
  end
end
