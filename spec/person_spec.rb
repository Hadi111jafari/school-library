require_relative '../person'
require_relative '../rental'

describe Person do
  before :each do
    @person = Person.new(27, 'Hadi')
    @person.parent_permission = false
  end

  describe '#new' do
    it 'Should return a new Person object' do
      expect(@person).to be_an_instance_of Person
    end

    it 'Should throw an error when no arguments are given' do
      expect { Person.new }.to raise_exception ArgumentError
    end

    it 'Should show an empty array when no rentals were added' do
      expect(@person.rentals).to be_empty
    end

    it 'Should return false since no permission was given' do
      expect(@person.parent_permission).to be false
    end

    it 'Should return false since no permission was given' do
      expect(@person.correct_name).to eq('Hadi')
    end
  end
end
