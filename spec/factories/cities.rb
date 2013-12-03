FactoryGirl.define do
  factory :city do |f|
    f.name { Faker::Name.last_name }
  end
end
