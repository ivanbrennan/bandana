require 'spec_helper'

describe Band do
  let(:asthmatica) { FactoryGirl.build(:asthmatica) }

  describe "attributes" do
    it "has a name" do
      expect(asthmatica.name).to_not be_nil
    end
  end

  describe "associations" do
    it "belongs to a city" do
      queens = FactoryGirl.build(:queens)
      asthmatica.city = queens
      #asthmatica.save
      expect(asthmatica.city).to_not be_nil
    end

    it "has demos" do
      inhaler = FactoryGirl.build(:inhaler)
      asthmatica.demos << inhaler
      #asthmatica.save
      expect(asthmatica.demos).to include(inhaler)
    end

    it "has genres" do
      rock = FactoryGirl.build(:rock)
      asthmatica.band_genres.build(:genre => rock)
      #asthmatica.save
      expect(asthmatica.genres).to include(rock)
    end

    it "has instruments" do
      sax = FactoryGirl.build(:sax)
      asthmatica.band_instruments.build(:instrument => sax)
      #asthmatica.save
      expect(asthmatica.instruments).to include(sax)
    end

    it "has musicians" do
      axel = FactoryGirl.build(:axel)
      asthmatica.band_musicians.build(:musician => axel)
      #asthmatica.save
      expect(asthmatica.musicians).to include(axel)
    end
  end

end
