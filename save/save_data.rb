require_relative './save_book'
require_relative './save_person'
require_relative './save_rental'

def save_data(book, person, rental)
  save_book(book)
  save_person(person)
  save_rental(rental)
  puts 'Bye bye! Thank you for using this app!'
end
