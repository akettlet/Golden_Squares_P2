require 'count_words'

RSpec.describe "count_words method" do
  it "Returns 0 for an empty string" do
    expect(count_words("")).to eq 0
  end

  it "Returns 1 for a string with one word" do
    expect(count_words("Hello")).to eq 1
  end

  it "Returns 3 for a string with three words" do
    expect(count_words("I am GREAT!")).to eq 3
  end
end
