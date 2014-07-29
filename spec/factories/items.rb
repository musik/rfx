# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    title "MyString"
    sn "MyString"
    name "MyString"
    price "9.99"
    price_vip "9.99"
    year 1
    spec "MyString"
    made_by "MyString"
    unit "MyString"
    moq 1
    stock 1
  end
end
