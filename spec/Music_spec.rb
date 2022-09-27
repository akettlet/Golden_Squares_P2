require 'Music'

RSpec.describe Music do
  it "add() adds a track to the list" do
    music = Music.new
    music.add("Lizzo", "About Damn Time")
    expect(music.list()).to eq "About Damn Time by Lizzo"
  end

  context "add() adds a track to the list" do
    it "An empty artist will throw the error Need to pass an artist" do
      music = Music.new
      expect{music.add("", "About Damn Time")}.to raise_error "Need to pass an artist."
    end
  end

  context "add() adds a track to the list" do
    it "An empty track will throw the error Need to pass an track" do
      music = Music.new
      expect{music.add("Lizzo", "")}.to raise_error "Need to pass an track."
    end
  end

  context "add() adds multiple tracks to the list" do
    it "list returns a string of tracks" do
      music = Music.new
      music.add("Lizzo", "About Damn Time")
      music.add("BLACKPINK", "Pink Venom")
      expect(music.list()).to eq "About Damn Time by Lizzo\nPink Venom by BLACKPINK"
    end
  end
end
