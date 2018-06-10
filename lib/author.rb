class Author

  attr_accessor :name

  @@all = []

  def initialize(name= nil)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@all << self
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    @@all << self
    post.author = self
  end

  def self.post_count
    @@all.count
  end

end
