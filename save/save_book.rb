require 'json'

def save_book(book)
  book_data = []
  book.map do |value|
    info = {}
    info['title'] = value.title
    info['author'] = value.author
    book_data.push(info)
  end
  File.write('./stored_data/book.json', JSON.pretty_generate(book_data))
end
