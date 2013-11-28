require 'spec_helper'

describe Demo do
  let(:demo) { Demo.new }

  it "has a name" do
    demo.name = "Inhaler"
    expect(demo.name).to eq("Inhaler")
  end

  it "belongs to a band" do
    band = Band.new(:name => "Asthmatica")
    demo.band = band
    expect(demo.band).to eq(band)
  end
end
