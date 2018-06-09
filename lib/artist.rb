class Artist

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
    song.name
  end

  def self.song_count
    Song.all.length
  end

end
