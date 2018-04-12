require 'spec_helper'

RSpec.describe "#fixcase" do
  it "has a version number" do
    expect(Fixcase::VERSION).to eq('1.0.0')
  end

  it "titlecases when a string is all uppercase" do
    expect("HAMBONE".fixcase).to eq("Hambone")
  end

  it "titlecases when a string is all lowercase" do
    expect("hambone".fixcase).to eq("Hambone")
  end

  it "leaves it alone when it's already mixed case" do
    expect("HamBone".fixcase).to eq("HamBone")
  end

  it "does whatever titlecase does, even if strange" do
    expect("JAXON FLAXON-WAXON".fixcase).to eq("Jaxon Flaxon Waxon")
  end
end
