# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :costbook do
    name "MyString"
    material "MyString"
    material_cost "9.99"
    labor_cost "9.99"
    division "MyString"
  end
end
