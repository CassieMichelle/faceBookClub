# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :forum do
    book_id 1
    post_id 1
    deadline "2013-11-13"
  end
end
