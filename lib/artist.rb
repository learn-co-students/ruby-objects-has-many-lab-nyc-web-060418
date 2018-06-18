require 'pry'

class Artist

  attr_accessor :name
  @@artist = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@artist
  end

  def songs
    Song.all.select {|song| song.artist = self}
  end

  def add_song(song)
    Song.new(song)
  end

  def add_song_by_name(song_name)
    add_song(song_name).name == self
  end

  def self.song_count
    Song.all.count-1
  end

end
