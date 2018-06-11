class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name = '', artist = '')
    @name = name
    @@all << self
    @artist = artist
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist == ''
      nil
    else
      self.artist.name
    end
  end
end
