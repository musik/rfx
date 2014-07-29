# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :brand do
    name "MyString"
    slug "MyString"
    priority 1
    items_count 1
  end
end
