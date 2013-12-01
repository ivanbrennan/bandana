require 'spec_helper'

describe Genre do
  let(:rock) { FactoryGirl.build(:rock) }

  describe "attributes" do
    it "has a name" do
      expect(rock.name).to_not be_nil
    end
  end

  describe "associations" do
    it "has bands" do
      bloat = FactoryGirl.build(:bloat)
      rock.band_genres.build(:band => bloat)
      #rock.save
      expect(rock.bands).to include(bloat)
    end

    it "has demos" do
      protons = FactoryGirl.build(:protons)
      rock.demo_genres.build(:demo => protons)
      #rock.save
      expect(rock.demos).to include(protons)
    end
  end

end
