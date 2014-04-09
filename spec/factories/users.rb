# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    password_digest "password"
    email { Faker::Internet.email }
  end
end
