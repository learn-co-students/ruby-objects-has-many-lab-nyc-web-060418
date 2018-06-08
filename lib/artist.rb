require 'pry'

class Artist

  attr_accessor :name
  #attr_reader :songs

  @@songs = []


  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end



  def add_song(song)
    @@songs.push(song)
    song.artist = self
  end

  def add_song_by_name (name)
    new_song = Song.new(name)
    new_song.artist = self
    @@songs.push(new_song)
  end

  def self.song_count
    @@songs.length
  end

end
