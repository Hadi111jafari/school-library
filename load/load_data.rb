require_relative './book_data'
require_relative './person_data'
require_relative './rental_data'

def load_data(book, person, rental)
  book_data(book)
  person_data(person)
  rental_data(rental)
end
