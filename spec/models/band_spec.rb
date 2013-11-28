require 'spec_helper'

describe Band do
  let(:band) { Band.new }

  describe "attributes" do

    it "has a name" do
      band.name = "Asthmatica"
      expect(it "has a name")
    end

    it "has musicians" do
      band.musicians.build(:name => "Slash")
      band.musicians.build(:name => "Flea")
      expect(band.generes.count).to eq(2)
    end

    it "has genres" do
      band.genres.build(:name => "Rock")
      band.genres.build(:name => "Punk")
      expect(band.genres.count).to eq(2)
    end

    it "has demos" do
      band.demos.build(:name => "Inhaler")
      band.demos.build(:name => "Swim")
      expect(band.genres.count).to eq(2)
    end

  end
end
