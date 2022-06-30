require 'json'
require_relative '../book'

def book_data(book)
  file_path = './stored_data/book.json'
  File.write(file_path, JSON.pretty_generate([])) unless File.exist?(file_path)
  @file_book = File.read(file_path)
  return if @file_book.empty?

  data_book = JSON.parse(@file_book)
  data_book.map do |value|
    title = value['title']
    author = value['author']
    book_data = Book.new(title, author)
    book.push(book_data)
  end
end
