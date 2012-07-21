# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :material do
    name "MyString"
    description "MyString"
    crew "9.99"
    dialyOutput 1
    laborHours "9.99"
    unit "MyString"
    beforeCostMaterial "9.99"
    beforeCostLabor "9.99"
    beforeCostEquipment "9.99"
    beforeCostTotal "9.99"
    overheadProfitTotal "9.99"
  end
end
