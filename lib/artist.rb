class Artist

  attr_accessor :name, :songs

  ALL = []

  def initialize(name)
    @name = name
    @songs = [] #this will hold variables that point to song instances
    ALL << self
  end

  def add_song(song)
    @songs << song
      song.artist = self #song instance updates its property to equal self, where self is the artist instance
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
  Song.all.length
  end

end
