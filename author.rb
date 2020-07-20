class Author
  @@all = []

  def initialize
    Author.all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select { |book| book.author == self }
  end

  def write_book
    
  end
end