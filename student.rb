require './person'

class Student < Person
  attr_reader :classroom, :status

  def initialize(classroom, age, name = 'Unknown', status = 'Student', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    @status = status
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
