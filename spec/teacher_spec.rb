require_relative '../teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new('Physics', 34, 'Albert Einestine')
  end

  describe '#new' do
    it 'Should return a new Teacher object' do
      expect(@teacher).to be_an_instance_of Teacher
    end

    it 'Should throw an error when less than 2 arguments are given' do
      expect { Teacher.new }.to raise_exception ArgumentError
    end
    it 'Should show name = unknown when just 2 arguments are given' do
      teacher2 = Teacher.new('Science', 50)
      expect(teacher2.name).to eq('unkown')
    end

    it 'Should return true when using the method can_use_services?' do
      expect(@teacher.can_use_services?).to be true
    end
  end
end
