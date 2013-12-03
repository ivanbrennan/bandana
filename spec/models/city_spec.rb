require 'spec_helper'

describe City do
  it "has a valid factory" do
    expect(FactoryGirl.build(:city)).to be_valid
  end

  it "is invalid without a name" do
    expect(FactoryGirl.build(:city, name: nil)).to_not be_valid
  end

  describe "associations" do
    let(:city) { FactoryGirl.build(:city) }

    it "has bands" do
      band = FactoryGirl.build(:band)
      city.bands << band
      expect(city.bands).to include(band)
    end

    it "has musicians" do
      musician = FactoryGirl.build(:musician)
      city.musicians << musician
      expect(city.musicians).to include(musician)
    end
  end

end
