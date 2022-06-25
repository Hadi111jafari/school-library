require './person'
require './teacher'
require './student'
require './book'
require './rental'

class App
  attr_accessor :person, :book, :rentals

  def initialize
    @person = []
    @book = []
    @rentals = []
  end

  def list(value)
    case value
    when 'book'
      if @book.empty?
        puts 'There are no books'
      else
        (@book.map.with_index do |book, index|
          puts "#{index}) Title: #{book.title}, Author: #{book.author}"
        end)
      end
    when 'people'
      if @person.empty?
        puts 'There are no records'
      else
        (@person.map.with_index do |val, index|
          puts "#{index}) Name: #{val.name}, ID: #{val.id}, Age: #{val.age}"
        end)
      end
    end
  end

  def create_student(age, name, _permission, classroom)
    student_info = Student.new(classroom, age, name, parent_permission)
    @person.push(student_info)
    puts 'Person created successfully'
  end

  def create_teacher(specialization, age, name)
    teacher_info = Teacher.new(specialization, age, name)
    @person.push(teacher_info)
    puts 'Person created successfully'
  end

  def create_book(title, author)
    book_info = Book.new(title, author)
    @book.push(book_info)
    puts 'Book created successfully'
  end

  def create_rental(date, book, person)
    @book.filter_map do |info|
      @title = info.title if info.title == book
      @author = info.author if info.title == book
    end
    book_info = Book.new(@title, @author)

    @person.filter_map do |info|
      @age = info.age if info.name == person
      @name = info.name if info.name == person
    end
    person_info = Person.new(@age, @name)

    rental_info = Rental.new(date, book_info, person_info)
    @rentals.push(rental_info)
    puts 'Rental created successfully'
  end

  def list_all_rentals_by_id(value)
    puts "Name: #{value}"
    (@rentals.filter_map do |res|
      puts "Date: #{res.date}, Book '#{res.book.title}' by #{res.book.author}" if res.person.name == value
    end)
  end
end
