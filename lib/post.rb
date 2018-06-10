class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title = "post title")
    @title = title
    @@all << self
  end

  def title
    @title
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end
