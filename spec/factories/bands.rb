FactoryGirl.define do
  factory :band do |f|
    f.name { Faker::Name.last_name }
  end
end
