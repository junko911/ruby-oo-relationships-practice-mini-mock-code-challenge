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

  def write_book(title, word_count)
    Book.new(title, self, word_count)
  end
  
  def total_words
    books.sum { |book| book.word_count }
  end
end