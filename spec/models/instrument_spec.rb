require 'spec_helper'

describe Instrument do
  let(:sax)  { FactoryGirl.build(:sax) }

  describe "attributes" do
    it "has a name" do
      expect(sax.name).to_not be_nil
    end
  end

  describe "associations" do

    it "has bands" do
      asthmatica = FactoryGirl.build(:asmthmatica)
      sax.band_instruments.build(:band => asthmatica)
      #sax.save
      expect(sax.bands).to include(asthmatica)
    end

    it "has musicians" do
      axel = FactoryGirl.create(:axel)
      sax.musician_instruments.build(:musician => axel)
      #sax.save
      expect(sax.musicians).to include(axel)
    end
  end

end
