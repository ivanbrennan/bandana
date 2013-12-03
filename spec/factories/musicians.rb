FactoryGirl.define do
  factory :musician do |f|
    f.name { Faker::Name.first_name }
  end
end
