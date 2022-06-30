require 'json'
require_relative '../book'
require_relative '../person'
require_relative '../rental'

def rental_data(rental)
  File.write('./stored_data/rental.json', JSON.pretty_generate([])) unless File.exist?('./stored_data/rental.json')
  @file_rental = File.read('./stored_data/rental.json')
  return if @file_rental.empty?

  data_rental = JSON.parse(@file_rental)
  data_rental.map do |value|
    age = value['Age']
    name = value['Name']
    book = value['Book']
    author = value['Author']
    date = value['Date']
    book_info = Book.new(book, author)
    person_info = Person.new(age, name)
    rental_info = Rental.new(date, book_info, person_info)
    rental << rental_info
  end
end
