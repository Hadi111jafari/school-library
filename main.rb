# rubocop:disable all
#!/usr/bin/env ruby

require './app'

@menu = [
  { value: '1', message: 'List all books' },
  { value: '2', message: 'List all people' },
  { value: '3', message: 'Create a person' },
  { value: '4', message: 'Create a book' },
  { value: '5', message: 'Create a rental' },
  { value: '6', message: 'List all rentals for a given person id' },
  { value: '7', message: 'Exit' }
]

def print_menu
  puts "\n"
  puts 'Please choose an option by entering a number:'
  @menu.map { |option| puts "#{option[:value]} - #{option[:message]}" }
end

def load_menu
  print_menu
  @input = gets.chomp
end

def valid_input?(input)
  %w[1 2 3 4 5 6 7].member?(input)
end

def valid_person?(selection)
  %w[1 2].member?(selection)
end

def main
  data = App.new
  loop do
    load_menu
    if valid_input?(@input)
      case @input
      when '1'
        data.list('book')
      when '2'
        data.list('people')
      when '3'
        print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
        selection = gets.chomp
        if valid_person?(selection)
          case selection
          when '1'
            print 'Age: '
            age = gets.chomp
            print 'Name: '
            name = gets.chomp
            print 'Classroom: '
            classroom = gets.chomp
            print 'Has parent permission? [Y/N]: '
            permission = gets.chomp
            loop do
              break if permission.capitalize == 'N' || permission.capitalize == 'Y'

              puts "#{permission} is not a valid entry, try again"
              permission = gets.chomp
            end
            data.create_student(age, name, permission, classroom)
          when '2'
            print 'Age: '
            age = gets.chomp
            print 'Name: '
            name = gets.chomp
            print 'Specialization: '
            specialization = gets.chomp
            data.create_teacher(specialization, age, name)
          end
        end
      when '4'
        print 'Title: '
        title = gets.chomp
        print 'Author: '
        author = gets.chomp
        data.create_book(title, author)
      when '5'
        if data.book.empty? || data.person.empty?
          puts 'There are no books or people added'
        else
          puts 'Select a book from the following list by number'
          data.list('book')
          compare = data.book.length - 1
          option = gets.chomp.to_i
          loop do
            break if option.between?(0, compare)

            puts "#{option} is not a valid entry, try again"
            option = gets.chomp.to_i
          end
          book1 = data.book.map.with_index { |b, i| b.title if i == option }
          book = book1.join
          puts 'Select a person from the following list by number (not id)'
          data.list('people')
          check = data.person.length - 1
          choose = gets.chomp.to_i
          loop do
            break if choose.between?(0, check)

            puts "#{choose} is not a valid entry, try again"
            choose = gets.chomp.to_i
          end
          person1 = data.person.map.with_index { |p, i| p.name if i == choose }
          person = person1.join
          print 'Date [YYYY/MM/DD]: '
          date = gets.chomp
          data.create_rental(date, book, person)
        end
      when '6'
        if data.rentals.empty?
          puts 'There are no rentals'
        else
          print "person's ID: "
          id = gets.chomp.to_i
          record = data.person.filter_map do |i|
            i.name if i.id == id
          end
          loop do
            break if record.length.positive? || id.zero?

            puts "Invalid ID #{id}, please try again"
            puts 'Or go back to the main menu by pressin 0'
            id = gets.chomp.to_i
            record = data.person.filter_map do |i|
              i.name if i.id == id
            end
          end
          value = record.join
          data.list_all_rentals_by_id(value)
        end

      when '7'
        puts 'Thank you for using the app!'
        break
      end
    else
      puts "option #{@input} is invalid, please try again"
    end
  end
end

main
