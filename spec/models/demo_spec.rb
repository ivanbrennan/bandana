require 'spec_helper'

describe Demo do
  let(:inhaler) { Factorygirl.build(:inhaler) }

  describe "attributes" do

    it "has a name" do
      inhaler.name
    end

    it "belongs to a band" do
      bloat = Factorygirl.build(:bloat)
      inhaler.band = bloat
    end

    it "has musicians" do
      axel = Factorygirl.build(:axel)
      flea = Factorygirl.build(:flea)
      asthmatica = FactoryGirl.build(:asthmatica)
      asthmatica.musicians = [axel, flea]
      inhaler.band = asthmatica
      expect(inhaler.musicians).to eq([axel, flea])
    end

    it "has genres" do
      rock = Factorygirl.build(:rock)
      punk = Factorygirl.build(:punk)
      inhaler.genres = [rock, punk]
    end

  end
end
