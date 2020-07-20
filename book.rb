class Book
  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title
    Book.all << self
  end

  def self.all
    @@all
  end
end
