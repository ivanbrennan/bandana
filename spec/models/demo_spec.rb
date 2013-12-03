require 'spec_helper'

describe Demo do
  it "has a valid factory" do
    expect(FactoryGirl.build(:demo)).to be_valid
  end

  it "is invalid without a name" do
    expect(FactoryGirl.build(:demo, name: nil)).to_not be_valid
  end

  it "is invalid without a band" do
    expect(FactoryGirl.build(:demo, band: nil)).to_not be_valid
  end

  describe "associations" do
    let(:demo) { FactoryGirl.build(:demo) }

    it "belongs to a band" do
      band = FactoryGirl.build(:band)
      demo.band = band
      demo.save
      expect(band.demos).to include(demo)
    end

    it "has genres" do
      genre = FactoryGirl.build(:genre)
      demo.demo_genres.build(:genre => genre)
      expect(demo.genres).to include(genre)
    end
  end

end
