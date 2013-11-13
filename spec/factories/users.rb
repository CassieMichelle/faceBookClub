# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |f|
  	f.email {Faker::Internet.email}
  	f.screen_name { Faker::Name.name }
  end
end
