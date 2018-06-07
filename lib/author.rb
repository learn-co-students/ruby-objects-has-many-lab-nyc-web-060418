class Author
  @@all_posts = []

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@all_posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    @@all_posts << post
    post.author = self
    post
  end

  def self.post_count
    @@all_posts.length
  end
end
