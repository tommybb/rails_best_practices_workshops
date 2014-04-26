# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :request do
    user_id nil
    title "MyText"
    description "MyText"
  end
end
