require 'spec_helper'

describe Band do
  it "has a valid factory" do
    expect(FactoryGirl.build(:band)).to be_valid
  end

  it "is invalid without a name" do
    expect(FactoryGirl.build(:band, name: nil)).to_not be_valid
  end

  describe "associations" do
    let(:band) { FactoryGirl.build(:band) }

    it "belongs to a city" do
      city = FactoryGirl.build(:city)
      band.city = city
      expect(band.city).to_not be_nil
    end

    it "has demos" do
      demo = FactoryGirl.build(:demo)
      band.demos << demo
      expect(band.demos).to include(demo)
    end

    it "has genres" do
      genre = FactoryGirl.build(:genre)
      band.band_genres.build(:genre => genre)
      expect(band.genres).to include(genre)
    end

    it "has instruments" do
      instrument = FactoryGirl.build(:instrument)
      band.band_instruments.build(:instrument => instrument)
      expect(band.instruments).to include(instrument)
    end

    it "has musicians" do
      musician = FactoryGirl.build(:musician)
      band.band_musicians.build(:musician => musician)
      expect(band.musicians).to include(musician)
    end
  end

end
