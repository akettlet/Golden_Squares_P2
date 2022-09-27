def grammar(str)
  fail "ERROR: Expecting a string as an argument" if str.class != String
  if str == ""
    return false
  elsif str[0].upcase == str[0] && str[-1].match?(/[.!?]/)
    return true
  else
    return false
  end
end
