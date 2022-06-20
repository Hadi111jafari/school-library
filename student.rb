require './person'

class Student < Person
  def initialize(classroom)
    super
    @classroom = classroom
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end
