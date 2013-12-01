require 'spec_helper'

describe City do
  let(:brooklyn) { FactoryGirl.build(:brooklyn) }

  describe "attributes" do

    it "has a name" do
      brooklyn.name
    end

    it "has bands" do
      asthmatica = FactoryGirl.build(:asthmatica)
      bloat = FactoryGirl.build(:bloat)
      brooklyn.bands = [asthmatica, bloat]
    end

    it "has musicians" do
      axel = Factorygirl.build(:axel)
      flea = Factorygirl.build(:flea)
      brooklyn.musicians = [axel, flea]
    end

  end
end
