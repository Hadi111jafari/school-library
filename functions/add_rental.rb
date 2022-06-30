require_relative '../rental'
require_relative './rental_path'
require_relative './filter_data'

class AddRental
  def add_rental(book, person, rental)
    if book.empty? || person.empty?
      puts 'There are no books or people added'
    else
      puts 'Select a book from the following list by number'
      choose_book(book)
      puts 'Select a person from the following list by number (not id)'
      choose_person(person)
      print 'Date [YYYY/MM/DD]: '
      date = gets.chomp

      filter_book(book)
      filter_person(person)

      rental_data = Rental.new(date, @book_data, @person_data)
      rental << rental_data
      puts 'Rental created successfully'
    end
  end
end
