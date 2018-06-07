class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title, author=nil)
    @title = title
    @author = author
    Post.all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author ? self.author.name : nil
  end

end
