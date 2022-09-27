class GrammarStats
  def initialize
    # ...
    @checked = 0
    @passed = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "ERROR: Expecting a string as an argument" if text.class != String
    @checked += 1
    if text == ""
      return false
    elsif text[0].upcase == text[0] && text[-1].match?(/[.!?]/)
      @passed += 1
      return true
    else
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    return (@passed / @checked.to_f * 100).to_i
  end
end
