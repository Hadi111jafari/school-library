require_relative '../student'
require_relative '../teacher'
require_relative '../validation'
require_relative './person_options'

class AddPerson
  def add_person(person)
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    selection = gets.chomp
    if valid_person?(selection)
      case selection
      when '1'
        option_one
        person_data = Student.new(@classroom, @age, @name)
      when '2'
        option_two
        person_data = Teacher.new(@specialization, @age, @name)
      end
    else
      puts "option #{@input} is invalid, please try again"
    end
    person << person_data
    puts 'Person created successfully'
  end
end
