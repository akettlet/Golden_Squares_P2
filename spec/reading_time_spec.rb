require 'reading_time'

RSpec.describe "reading_time method" do
  context "given an empty string" do
    it "will return 0 seconds" do
      expect(reading_time("")).to eq "It will take 0 seconds"
    end
  end

  context "given a string" do
    it "will return 19 seconds" do
      expect(reading_time("These are examples of the method being called with particular arguments, and what the method should return in each situation. For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.")).to eq "It will take 19 seconds"
    end
  end

  context "given a nil" do
    it "will throw an error" do
      expect{reading_time(nil)}.to raise_error "Expecting a string as an arument"
    end
  end
end
