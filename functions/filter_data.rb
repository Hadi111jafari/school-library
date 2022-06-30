require_relative '../book'
require_relative '../person'

def filter_book(book)
  book.filter_map do |info|
    @title = info.title if info.title == @the_book
    @author = info.author if info.title == @the_book
  end
  @book_data = Book.new(@title, @author)
end

def filter_person(person)
  person.filter_map do |info|
    @age = info.age if info.name == @the_person
    @name = info.name if info.name == @the_person
  end
  @person_data = Person.new(@age, @name)
end
