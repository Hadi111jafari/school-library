require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before :each do
    @classroom = Classroom.new('B')
  end

  describe '#new' do
    it ' Should return a new Classroom object' do
      expect(@classroom).to be_an_instance_of Classroom
    end

    it 'Should throw an error when no arguments are given' do
      expect { Classroom.new }.to raise_exception ArgumentError
    end

    it 'Should show an empty array when no students were added' do
      expect(@classroom.students).to be_empty
    end

    it 'should have a list of students' do
      expect(@classroom.students).to eq([])
    end

    it ' should add a new student to the classroom' do
      student = Student.new(@classroom.label, 20, 'Ali')
      @classroom.add_student(student)
      expect(@classroom.students).not_to be_empty
    end
  end
end