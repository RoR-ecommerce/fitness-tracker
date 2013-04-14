FactoryGirl.define do
  factory :user do
    email     { Faker::Internet.email }
    name      { Faker::Internet.name }
    uid       { SecureRandom.uuid }
    provider  'ufc'
  end
end
