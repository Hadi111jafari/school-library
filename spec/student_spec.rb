require_relative '../student'

describe Student do
  before :each do
    @student = Student.new('B', 7, 'Hadi')
  end

  describe '#new' do
    it 'Should return a new Student object' do
      expect(@student).to be_an_instance_of Student
    end

    it 'Should throw an error when less than 2 arguments are given' do
      expect { Student.new }.to raise_exception ArgumentError
    end

    it 'Should show name = unknown when just 2 arguments are given' do
      student2 = Student.new('A3', 20)
      expect(student2.name).to eq('Unknown')
    end

    it 'Should return ¯\(ツ)/¯ when using the method play_hooky' do
      expect(@student.play_hooky).to eq('¯\(ツ)/¯')
    end

    it 'return student when checking the status' do
      expect(@student.status).to eq('Student')
    end
  end
end
