# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "test@gmail.com"
    name "MyText"
    password "asdqwe12"
  end
end
