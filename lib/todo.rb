def todo(str)
  fail "ERROR: Expecting a string as the argument." if str.class != String
  return str.include?('#TODO')
end
