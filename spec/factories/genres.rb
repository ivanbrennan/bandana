FactoryGirl.define do
  factory :genre do |f|
    f.name { Faker::Name.last_name }
  end
end
