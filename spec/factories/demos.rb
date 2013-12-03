FactoryGirl.define do
  factory :demo do |f|
    f.name { Faker::Name.last_name }
    f.band { FactoryGirl.build(:band) }
  end
end
