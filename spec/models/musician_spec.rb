require 'spec_helper'

describe Musician do
  let(:axel) { Factorygirl.build(:axel) }

  describe "attributes" do

    it "has a name" do
      axel.name
    end

    it "has instruments" do
      sax = Factorygirl.build(:sax)
      drums = Factorygirl.build(:drums)
      axel.instruments = [sax, drums]
    end

    it "has bands" do
      asthmatica = Factorygirl.build(:asthmatica)
      bloat = Factorygirl.build(:bloat)
      axel.bands = [asthmatica, bloat]
    end

    it "has genres" do
      rock = Factorygirl.build(:rock)
      punk = Factorygirl.build(:punk)
      axel.genres = [rock, punk]
    end

    it "has demos from all associated bands" do
      asthmatica = Factorygirl.build(:asthmatica)
      bloat = Factorygirl.build(:bloat)
      axel.bands = [asthmatica, bloat]

      inhaler = Factorygirl.build(:inhaler)
      asthmatica.demos = [inhaler]
      protons = Factorygirl.build(:protons)
      bloat.demos = [protons]

      expect(axel.demos.count).to eq(2)
    end

    it "has a city" do
      queens = FactoryGirl.build(:queens)
      axel.city = queens
    end

  end
end
