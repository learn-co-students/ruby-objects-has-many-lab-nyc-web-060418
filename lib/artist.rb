require 'pry'
class Artist
  @@all = []
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs = Song.all
  end

  def add_song(song)
      song.artist = self
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    new_song
  end

  def self.song_count
    Song.all.count
  end

end
