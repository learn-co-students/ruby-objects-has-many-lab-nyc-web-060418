class Song

  attr_accessor :title, :artist

  @@all = []

  def initialize(title = "song title")
    @title = title
    @@all << self
  end

  def name
    self.title
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end
