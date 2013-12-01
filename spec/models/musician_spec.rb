require 'spec_helper'

describe Musician do
  let(:axel) { FactoryGirl.build(:axel) }

  describe "attributes" do
    it "has a name" do
      expect(axel.name).to_not be_nil
    end
  end

  describe "associations" do
    it "has bands" do
      bloat = FactoryGirl.build(:bloat)
      axel.band_musicians.build(:band => bloat)
      #axel.save
      expect(axel.bands).to include(bloat)
    end

    it "belongs to a city" do
      queens = FactoryGirl.build(:queens)
      axel.city = queens
      expect(axel.city).to_not be_nil
    end

    it "has genres" do
      rock = FactoryGirl.build(:rock)
      axel.musician_genres.build(:genre => rock)
      #axel.save
      expect(axel.genres).to include(rock)
    end

    it "has instruments" do
      sax = FactoryGirl.build(:sax)
      axel.musician_instruments.build(:instrument => sax)
      #axel.save
      expect(axel.instruments).to include(sax)
    end

    it "has demos from all associated bands" do
      inhaler = FactoryGirl.build(:inhaler)
      asthmatica = FactoryGirl.build(:asthmatica)
      asthmatica.demos.build(inhaler)
      asthmatica.band_musicians.build(:musician => axel)
      #asthmatica.save
      expect(axel.demos).to include(inhaler)
      # this will involve a custom instance method for the Musician class
    end
  end

end
