require 'spec_helper'

describe Musician do
  let(:musician) { FactoryGirl.build(:musician) }

  it "has a valid factory" do
    expect(musician).to be_valid
  end

  describe "associations" do
    it "has bands" do
      band = FactoryGirl.build(:band)
      musician.band_musicians.build(:band => band)
      expect(musician.bands).to include(band)
    end

    it "belongs to a city" do
      city = FactoryGirl.build(:city)
      musician.city = city
      expect(musician.city).to_not be_nil
    end

    it "has genres" do
      genre = FactoryGirl.build(:genre)
      musician.musician_genres.build(:genre => genre)
      expect(musician.genres).to include(genre)
    end

    it "has instruments" do
      instrument = FactoryGirl.build(:instrument)
      musician.musician_instruments.build(:instrument => instrument)
      expect(musician.instruments).to include(instrument)
    end

    it "has demos from all associated bands" do
      demo = FactoryGirl.build(:demo)
      band = FactoryGirl.build(:band)
      band.demos << demo
      band.band_musicians.build(:musician => musician)
      band.save
      expect(musician.demos).to include(demo)
    end
  end

end
