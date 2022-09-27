require 'grammar'

RSpec.describe "grammar method" do
  it "returns false if passed an empty string" do
    expect(grammar("")).to eq false
  end

  it "returns true if passed Hello." do
    expect(grammar("Hello.")).to eq true
  end

  it "returns true if passed Hello?" do
    expect(grammar("Hello?")).to eq true
  end

  it "returns true if passed Hello!" do
    expect(grammar("Hello!")).to eq true
  end

  it "returns false if passed hello." do
    expect(grammar("hello.")).to eq false
  end

  it "returns false if passed hello?" do
    expect(grammar("hello?")).to eq false
  end

  it "returns false if passed hello!" do
    expect(grammar("hello!")).to eq false
  end

  it "returns false if passed hello" do
    expect(grammar("hello")).to eq false
  end

  it "throws an error if the arument is not a string type" do
    expect{grammar(345)}.to raise_error "ERROR: Expecting a string as an argument"
  end

  it "throws an error if the arument is nil" do
    expect{grammar(nil)}.to raise_error "ERROR: Expecting a string as an argument"
  end
end
