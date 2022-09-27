class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents.split(" ")
    @pointer = 0

  end

  def title
    return @title
  end

  def contents
    return @contents.join(" ")
  end

  def count_words
    return @contents.length
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    return count_words / wpm
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    @num_words_to_read = wpm * minutes
    @to_read = @contents[@pointer, @num_words_to_read].join(" ")
    @pointer = @pointer + @num_words_to_read
    if @pointer > count_words
      @pointer = 0
    end
    return @to_read
  end
end
