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
    new_book = Book.new(title, self, word_count)
    AuthorBook.new(self, new_book)
  end
  
  def total_words
    books.sum { |book| book.word_count }
  end
  
  def self.most_words
    all.group_by { |author| author.total_words }.max.last
  end

  #Many-to-many relationship methods
  def add_book(book)
    AuthorBook.new(self, book)
  end

end