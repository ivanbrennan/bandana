require 'spec_helper'

describe Demo do
  let(:inhaler) { FactoryGirl.build(:inhaler) }

  describe "attributes" do
    it "has a name" do
      expect(inhaler.name).to_not be_nil
    end
  end

  describe "associations" do
    it "belongs to a band" do
      bloat = FactoryGirl.build(:bloat)
      #bloat.save
      inhaler.build_band(bloat)
      #inhaler.save
      expect(bloat.demos).to include(inhaler)
    end

    it "has genres" do
      rock = FactoryGirl.build(:rock)
      inhaler.demo_genres.build(:genre => rock)
      #inhaler.save
      expect(inhaler.genres).to include(rock)
    end
  end

end
