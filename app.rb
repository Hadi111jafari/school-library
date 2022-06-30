# rubocop:disable all
require './menu'
require './functions/data'
require './functions/add_person'
require './functions/add_book'
require './functions/add_rental'
require './functions/person_list'
require './functions/book_list'
require './functions/rental_list'

def app
  data = Constructor.new
  loop do
    load_menu
    if valid_input?(@input)
      case @input
      when '1' then BookList.new.book_list(data.book)
      when '2' then PersonList.new.person_list(data.person)
      when '3' then AddPerson.new.add_person(data.person)
      when '4' then AddBook.new.add_book(data.book)
      when '5' then AddRental.new.add_rental(data.book, data.person, data.rentals)
      when '6' then RentalList.new.rental_list(data.rentals, data.person)
      when '7'
        puts 'Thank you for using the app!'
        break
      end
    else
      puts "option #{@input} is invalid, please try again"
    end
  end
end
