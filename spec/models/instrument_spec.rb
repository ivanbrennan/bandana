require 'spec_helper'

describe Instrument do
  it "has a valid factory" do
    expect(FactoryGirl.build(:instrument)).to be_valid
  end

  describe "associations" do
    let(:instrument)  { FactoryGirl.build(:instrument) }

    it "has bands" do
      band = FactoryGirl.build(:band)
      instrument.band_instruments.build(:band => band)
      expect(instrument.bands).to include(band)
    end

    it "has musicians" do
      musician = FactoryGirl.create(:musician)
      instrument.musician_instruments.build(:musician => musician)
      instrument.save
      expect(instrument.musicians).to include(musician)
    end
  end

end
