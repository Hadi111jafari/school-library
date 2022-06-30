require_relative './book_list'
require_relative './person_list'

def choose_book(book)
  BookList.new.book_list(book)
  compare = book.length - 1
  option = gets.chomp.to_i
  loop do
    break if option.between?(0, compare)

    puts "#{option} is not a valid entry, try again"
    option = gets.chomp.to_i
  end
  book1 = book.map.with_index { |b, i| b.title if i == option }
  @the_book = book1.join
end

def choose_person(person)
  PersonList.new.person_list(person)
  check = person.length - 1
  choose = gets.chomp.to_i
  loop do
    break if choose.between?(0, check)

    puts "#{choose} is not a valid entry, try again"
    choose = gets.chomp.to_i
  end
  person1 = person.map.with_index { |p, i| p.name if i == choose }
  @the_person = person1.join
end
