require 'todo'

RSpec.describe "todo method" do
  it "Will return false if passed an empty string" do
    expect(todo("")).to eq false
  end

  it "Will return false if passed a string not containing #TODO" do
    expect(todo("This is a string with nothing to do")).to eq false
  end

  it "Will return false if passed a string containing #todo" do
    expect(todo("This is a string with nothing #todo")).to eq false
  end

  it "Will return true if passed a string containing #TODO" do
    expect(todo("I need #TODO pass this challenge")).to eq true
  end

  context "When a nil is passed to the method" do
    it "Will throw the error ERROR: Expecting a string as the argument." do
      expect{todo(nil)}.to raise_error "ERROR: Expecting a string as the argument."
    end
  end

  context "When an integer is passed to the method" do
    it "Will throw the error ERROR: Expecting a string as the argument." do
      expect{todo(34)}.to raise_error "ERROR: Expecting a string as the argument."
    end
  end
end
