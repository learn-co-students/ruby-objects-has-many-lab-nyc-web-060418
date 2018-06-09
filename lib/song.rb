class Song

  attr_reader :artist, :song

  @@songs = []

  def initialize(song, artist)
    @song = song
    @artist = artist
    @@songs << self
  end

  def self.all
    @@songs
  end

end
