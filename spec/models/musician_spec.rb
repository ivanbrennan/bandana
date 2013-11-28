require 'spec_helper'

describe Musician do
  let(:musician) { Musician.new }

  describe "attributes" do

    it "has a name" do
      musician.name = "Axel"
      expect(musician.name).to eq("Axel")
    end

    it "has instruments" do
      musician.instruments.build(:name => "guitar")
      musician.instruments.build(:name => "drums")
      expect(musician.instruments.count).to eq(2)
    end

    it "has bands" do
      musician.bands.build(:name => "Asthmatica")
      musician.bands.build(:name => "Guns 'n Roses")
      expect(musician.bands.count).to eq(2)
    end

    it "has genres" do
      musician.genres.build(:name => "Rock")
      musician.genres.build(:name => "Grime")
      expect(musician.genres.count).to eq(2)
    end

    it "has demos" do
      musician.genres.build(:name => "Rock")
      musician.genres.build(:name => "Grime")
      expect(musician.genres.count).to eq(2)
    end

  end
end
