class Music
  def initialize()
    @list = []
  end

  def add(artist, track)
    #add artist and track to list as an array
    fail "Need to pass an artist." if artist == ""
    fail "Need to pass an track." if track == ""
    @list << [artist, track]
  end

  def list()
    #return list of tracks as string
    @list.map{|element| "#{element[1]} by #{element[0]}"}.join("\n")
  end
end
