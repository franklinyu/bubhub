<<<<<<< HEAD
require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.firstName { Faker::Name.first_name }
    f.lastName { Faker::Name.last_name }
=======
#spec/factories/users.rb

FactoryGirl.define do
  factory :user do |u|
    u.first_name{Faker::Name.first_name}
    u.last_name{Faker::Name.last_name}
    #generate 4 numbers for a random pin number
    u.pin{[1,1,1,1].map!{|x| (0..9).to_a.sample}.join.to_s}
    u.email{Faker::Internet.safe_email(u.first_name)}
    #generate 9 random numbers for a random bu id
    u.bu_id{[1,1,1,1,1,1,1,1,1].map!{|x| (0..9).to_a.sample}.join.to_s}
  end
  factory :invalid_user, parent: :user do |u|
    u.first_name{nil}
>>>>>>> 615e2779df0e990f73e21354f679d6d7038e96d9
  end
end
