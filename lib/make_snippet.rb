def make_snippet(str)
  #split into words
  words = str.split
  num_words = words.length
  if num_words < 6
    return str
  else
    first_five_words = words[0, 5].join(" ")
    return  first_five_words + "..."
  end
end
