require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.firstName { Faker::Name.first_name }
    f.lastName { Faker::Name.last_name }
  end
end
