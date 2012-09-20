# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :takeoff do
    walltype "MyString"
    item "MyString"
    level "MyString"
    length "9.99"
    height "9.99"
    material "MyString"
    project_id 1
  end
end
