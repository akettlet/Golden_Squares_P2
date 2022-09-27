require 'GrammarStats'

RSpec.describe GrammarStats do
  context "Checks a text string" do
    it "Returns true if first letter is capital and last char is .?!" do
      gram = GrammarStats.new
      expect(gram.check("")).to eq false
    end
  end

  context "Checks a text string" do
    it "Returns true if first letter is capital and last char is .?!" do
      gram = GrammarStats.new
      expect(gram.check("Hello.")).to eq true
    end
  end

  context "returns percentage of passed tests" do
    it "first time through with a pass" do
      gram = GrammarStats.new
      gram.check("Hello.")
      expect(gram.percentage_good).to eq 100
    end
  end

    context "returns percentage of passed tests" do
      it "first time through with a fail" do
        gram = GrammarStats.new
        gram.check("Hello")
        expect(gram.percentage_good).to eq 0
      end
    end

      context "returns percentage of passed tests" do
        it "second time through with a pass" do
          gram = GrammarStats.new
          gram.check("Hello.")
          gram.check("Hello.")
          expect(gram.percentage_good).to eq 100
        end
      end

      context "returns percentage of passed tests" do
        it "second time through with a fail" do
          gram = GrammarStats.new
          gram.check("Hello")
          gram.check("Hello")
          expect(gram.percentage_good).to eq 0
        end
      end

      context "returns percentage of passed tests" do
        it "second time through with a pass and fail" do
          gram = GrammarStats.new
          gram.check("Hello")
          gram.check("Hello.")
          expect(gram.percentage_good).to eq 50
        end
      end
  end
