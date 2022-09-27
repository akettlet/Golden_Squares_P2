require 'make_snippet'

RSpec.describe "make_snippet" do
  context "Given an empty string" do
    it "returns an empty string" do
      expect(make_snippet("")).to eq ""
    end
  end

  context "given a string of 4 words" do
    it "returns the words" do
      expect(make_snippet("What a great day")).to eq "What a great day"
    end
  end

  it "returns first five words and then ... if more than that" do
    expect(make_snippet("What a great day to do some code")).to eq "What a great day to..."
  end

  it "returns the words if less than five words" do
    expect(make_snippet("What a great day today")).to eq "What a great day today"
  end
end
