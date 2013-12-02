require 'spec_helper'

describe City do
  let(:brooklyn) { FactoryGirl.build(:brooklyn) }

  describe "attributes" do
    it "has a name" do
      expect(brooklyn.name).to_not be_nil
    end
  end

  describe "associations" do
    it "has bands" do
      bloat = FactoryGirl.build(:bloat)
      brooklyn.bands << bloat
      #brooklyn.save
      expect(brooklyn.bands).to include(bloat)
    end

    it "has musicians" do
      flea = FactoryGirl.build(:flea)
      brooklyn.musicians << flea
      #brooklyn.save
      expect(brooklyn.musicians).to include(flea)
    end
  end

end
