require 'spec_helper'

describe Genre do
  it "has a valid factory" do
    expect(FactoryGirl.build(:genre)).to be_valid
  end

  describe "associations" do
    let(:genre) { FactoryGirl.build(:genre) }

    it "has bands" do
      band = FactoryGirl.build(:band)
      genre.band_genres.build(:band => band)
      expect(genre.bands).to include(band)
    end

    it "has demos" do
      demo = FactoryGirl.build(:demo)
      genre.demo_genres.build(:demo => demo)
      expect(genre.demos).to include(demo)
    end
  end

end
