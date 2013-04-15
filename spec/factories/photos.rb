# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    owner_id 1
    owner_type "MyString"
  end
end
