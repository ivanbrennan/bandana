require 'spec_helper'

describe Instrument do
  let(:sax)  { Factorygirl.create(:sax) }

  describe "attributes" do

    it "has a name" do
      expect(sax.name).to_not be_nil
    end

    it "has musicians" do
      axel = Factorygirl.create(:axel)
      axel.musician_instruments.build(:instrument => sax)
      #axel.save
      expect(sax.musicians).to include(axel)
    end
  end

  it "has bands" do
    asthmatica = Factorygirl.build(:asmthmatica)
    asthmatica.band_instruments.build(:instrument => sax)
    #asthmatica.save
    expect(sax.bands).to include(asthmatica)
  end

  it "has genres" do
    rock = Factorygirl.build(:rock)
    rock.genre_instruments.build(:instrument => sax)
    #rock.save
    expect(sax.genres).to include(rock)
  end

  it "has demos" do
    inhaler = Factorygirl.build(:inhaler)
    inhaler.demo_instruments.build(:instrument => sax)
    #inhaler.save
    expect(sax.demos).to include(inhaler)
  end

end
