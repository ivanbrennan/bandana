require 'spec_helper'

describe Genre do
  let(:rock) { FactoryGirl.build(:rock) }

  describe "attributes" do

    it "has a name" do
      rock.name
    end

    it "has bands" do
      asthmatica = Factorygirl.build(:asthmatica)
      asthmatica.genres = [rock]
      expect(rock.bands).to eq([asthmatica])
    end

    it "has demos" do
      inhaler = Factorygirl.build(:inhaler)
      inhaler.genres = [rock]
      expect(rock.demos).to eq([inhaler])
    end

  end
end
