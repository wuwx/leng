# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "name"
    email "email@email.com"
    password "password"
    password_confirmation "password"
  end
end
