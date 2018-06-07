class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @author = author
    @@all << self
  end

  def title
    @title
  end

  def author
    @author
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end

end
