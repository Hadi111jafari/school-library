require_relative '../book'

class AddBook
  def add_book(book)
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book_data = Book.new(title, author)
    book << book_data
    puts 'Book created successfully'
  end
end
