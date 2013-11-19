# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :destination do
    address "MyString"
    latitude 1.5
    longitude 1.5
    station nil
  end
end
