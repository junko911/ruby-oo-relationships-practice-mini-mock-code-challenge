class Author
  @@all = []

  def initialize
    Author.all << self
  end

  def self.all
    @@all
  end
end