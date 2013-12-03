FactoryGirl.define do
  factory :instrument do |f|
    f.name { Faker::Name.last_name }
  end
end
