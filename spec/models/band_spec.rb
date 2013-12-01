require 'spec_helper'

describe Band do
  let(:asthmatica) { Factorygirl.create(:band) }

  describe "attributes" do

    it "has a name" do
      expect(asthmatica.name).to_not be_nil
    end

    it "has a city" do
      queens = FactoryGirl.create(:queens)
      asthmatica.city = queens
      expect(asthmatica.city).to_not be_nil
    end

    it "has musicians" do
      axel = Factorygirl.build(:axel)
      flea = Factorygirl.build(:flea)
      asthmatica.musicians = [axel, flea]
    end

    it "has genres" do
      rock = Factorygirl.build(:rock)
      punk = Factorygirl.build(:punk)
      asthmatica.genres = [rock, punk]
    end

    it "has instruments" do
      sax = Factorygirl.build(:sax)
      drums = Factorygirl.build(:drums)
      asthmatica.instruments = [sax, drums]
    end

    it "has demos" do
      inhaler = Factorygirl.build(:inhaler)
      protons = Factorygirl.build(:protons)
      asthmatica.demos = [inhaler, protons]
    end

  end
end
