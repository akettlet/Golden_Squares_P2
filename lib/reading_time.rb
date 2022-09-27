def reading_time(str)
  fail "Expecting a string as an arument" if str == nil
  words = str.split(" ")
  num_words = words.length
  time = num_words / 200.0 * 60
  return "It will take #{time.ceil.to_i} seconds"
end
