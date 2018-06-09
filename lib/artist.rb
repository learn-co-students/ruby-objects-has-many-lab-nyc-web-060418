class Artist

attr_reader :artist

def initialize(artist)
  @artist = artist
  @@artist << self
end

def songs
  song.all.select do |song|
    @artist.self == song
  end
end

end
