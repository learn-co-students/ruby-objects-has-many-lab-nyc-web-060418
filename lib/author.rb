


class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end

  def self.post_count
    count = 0
    @@all.each do |author|
      count += author.posts.count
    end
    count
  end


end
