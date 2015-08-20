
FactoryGirl.define do
  factory :post do
    title { Faker::Name.first_name }
  end
end